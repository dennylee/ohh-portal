package com.ohh

class RegisterController {
    static allowedMethods = [register: "POST", confirmRegistration: "GET"]

    def registerService

    // base methods
    def sendLink() {
        render("Thank you for register.  An email will be sent to confirm.  Here's the link ${params.link}")
    }

    def confirmRegistration() {
        boolean success = registerService.confirmRegistration(params.token)
        if (success) {
            render('Thank you for confirming')
        } else {
            render('Something went wrong')
        }

    }

    protected String generateLink(linkParams) {
        createLink(base: "$request.scheme://$request.serverName:$request.serverPort$request.contextPath",
                controller: 'register', action: 'confirmRegistration',
                params: linkParams)
    }
}