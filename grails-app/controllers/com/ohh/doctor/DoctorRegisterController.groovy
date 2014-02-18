package com.ohh.doctor

import com.ohh.Doctor
import com.ohh.RegisterController

class DoctorRegisterController extends RegisterController {
    def registerService

    def index() {
        params.remove('controller')
        params.remove('action')
        [doctorRegisterInstance: new DoctorRegisterCommand(params)]
    }

    def register() {
        params.remove('dob_day')
        params.remove('dob_month')
        params.remove('dob_year')
        params.remove('create')
        params.remove('controller')
        params.remove('action')
        def doctorRegisterInstance = new DoctorRegisterCommand(params)

        // validate the confirm password same as the password
        if (!doctorRegisterInstance.matchedPassword()) {

            // The following helps with field highlighting in your view
            doctorRegisterInstance.errors.rejectValue(
                    'confirmPassword',
                    'Password not matched')

            render(view: "index", model: [doctorRegisterInstance: doctorRegisterInstance])
            return
        }

        def patientParams = doctorRegisterInstance.params
        patientParams.remove('confirmPassword')
        Doctor d = new Doctor(patientParams)

        // send to register
        def res = registerService.register(d)
        if (!res['user'] && !res['userRole']) {
            // The following helps with field highlighting in your view
            doctorRegisterInstance.errors.rejectValue(
                    'username',
                    'Username already exists')

            render(view: "index", model: [doctorRegisterInstance: doctorRegisterInstance])
            return
        }

        // generate confirmation link
        def token = registerService.generateRegistrationToken(res['user'])

        redirect(action: 'sendLink', params: [link: generateLink([token: token])])
    }
}


@grails.validation.Validateable
class DoctorRegisterCommand extends Doctor {
    String confirmPassword

    public boolean matchedPassword() {
        return confirmPassword?.equals(password)
    }
}