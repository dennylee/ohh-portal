package com.ohh.patient

class PatientHomeController {
    def springSecurityService

    def index() {
        render(view: "index", model: [patient: springSecurityService.getCurrentUser()])
        return
    }
}
