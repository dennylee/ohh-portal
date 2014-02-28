package com.ohh

class HomeRedirectController {

    def index() {
        // determine which dashboard to redirect to based on user's role
        def uType = params.uType
        if ('p'.equals(uType)) {
            redirect(controller: 'patientHome', action: 'index')
        } else if ('d'.equals(uType)) {
            redirect(controller: 'doctorHome', action: 'index')
        } else {
            throw new RuntimeException("Cannot redirect to proper home due to improper user instance.")
        }
    }
}
