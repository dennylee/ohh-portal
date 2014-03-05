package com.ohh

class UserAccountController {
    def userAccountService

    def updateUserAccount() {
        def userId = params.userId
        def user = userAccountService.updateUserAccount(userId, params)
        flash.message = "Successfully updated."

        render(view:'index', model: [user: user])
    }

    def getUserAccount() {
        render(view:'index', model: [user: userAccountService.getUserAccount(params.id)])
    }
}
