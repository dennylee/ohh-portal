package com.ohh.patient

import com.ohh.Patient
import com.ohh.RegisterController

class PatientRegisterController extends RegisterController {
    def registerService

    def index() {
        params.remove('controller')
        params.remove('action')
        [patientRegisterInstance: new PatientRegisterCommand(params)]
    }

    def register() {
        params.remove('dob_day')
        params.remove('dob_month')
        params.remove('dob_year')
        params.remove('create')
        params.remove('controller')
        params.remove('action')
        params['weight'] = Integer.parseInt(params['weight'])
        params['height'] = Integer.parseInt(params['height'])
        def patientRegisterInstance = new PatientRegisterCommand(params)

        // validate the confirm password same as the password
        if (!patientRegisterInstance.matchedPassword()) {

            // The following helps with field highlighting in your view
            patientRegisterInstance.errors.rejectValue(
                    'confirmPassword',
                    'Password not matched')

            render(view: "index", model: [patientRegisterInstance: patientRegisterInstance])
            return
        }

        def patientParams = patientRegisterInstance.params
        patientParams.remove('confirmPassword')
        Patient p = new Patient(patientParams)

        // send to register
        def res = registerService.register(p)
        if (!res['user'] && !res['userRole']) {
            // The following helps with field highlighting in your view
            patientRegisterInstance.errors.rejectValue(
                    'username',
                    'Username already exists')

            render(view: "index", model: [patientRegisterInstance: patientRegisterInstance])
            return
        }

        // generate confirmation link
        def token = registerService.generateRegistrationToken(res['user'])

        redirect(action: 'sendLink', params: [link: generateLink([token: token])])
    }
}


@grails.validation.Validateable
class PatientRegisterCommand extends Patient {
    String confirmPassword

    public boolean matchedPassword() {
        return confirmPassword?.equals(password)
    }
}