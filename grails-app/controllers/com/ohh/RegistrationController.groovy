package com.ohh

import com.ohh.exceptions.RegistrationException
import com.ohh.security.User

class RegistrationController {
    static allowedMethods = [register: "POST"]

    def registrationService
    def springSecurityService

    // creates the command object and redirect back to form
    def index() {
        params.remove('controller')
        params.remove('action')
        [registrationUserCommand: new RegistrationUserCommand(params)]
    }

    // handles registration for patient and doctor users into the system
    def register(RegistrationUserCommand registrationUserCommand) {

        // validate user command object
        if (!registrationUserCommand.validate()) {
            render(view: 'index', model: [registrationUserCommand: registrationUserCommand])
            return
        }

        def uType = registrationUserCommand.getType() // user role type to be given out (patient or doctor)

        // attempt to register user
        try {
            def user = registrationService.register(registrationUserCommand.getUser(), uType)
            if (user) {
                springSecurityService.reauthenticate(user.username, user.password)

                // redirect home page
                forward(controller: 'homeRedirect', action: 'index', params: [uType: uType])
            }
        } catch (RegistrationException re) {
            registrationUserCommand.errors.reject(null, re.getMessage())
            render(view: 'index', model: [registrationUserCommand: registrationUserCommand])
            return
        }
    }
}

class RegistrationUserCommand {
    String firstname
    String lastname
    String username // which is an email
    String password
    String confirmPassword
    String confirmUsername
    String type

    static constraints = {
        confirmPassword(blank: false, validator: { val, obj ->
            return val?.equals(obj.password)
        })
        confirmUsername(blank: false, validator: { val, obj ->
            return val?.equals(obj.username)
        })
        username(blank: false, validator: { val, obj ->
            return User.findByUsername(val) == null
        })
        type(blank: false, inList: ['p', 'd'])  // p = patient, d = doctor
    }

    public User getUser() {
        return new User(firstname: firstname, lastname: lastname, username: username, password: password)
    }
}

