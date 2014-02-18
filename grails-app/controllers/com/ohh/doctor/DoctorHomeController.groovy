package com.ohh.doctor

class DoctorHomeController {
    def springSecurityService

    def index() {
        render(view: "index", model: [doctor: springSecurityService.getCurrentUser()])
        return
    }
}
