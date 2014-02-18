package com.ohh

import com.ohh.security.Role
import com.ohh.security.User
import com.ohh.security.UserRole
import org.springframework.security.crypto.codec.Base64
import org.springframework.transaction.annotation.Transactional

class RegisterService {
    static transactional = false
    def grailsApplication

    @Transactional
    def register(User user) {
        // determine which role to give it based on instance
        def role = 'ROLE_PATIENT'
        if (user instanceof Doctor) {
            role = 'ROLE_DOCTOR'
        }

        // save this new user
        def u = user.save(flush: true)
        def ur = UserRole.create(u, Role.findByAuthority(role))

        return [user: u, userRole: ur]
    }

    @Transactional
    def confirmRegistration(String token) {
        def salt = grailsApplication.config.register.service.secret.key
        String content = new String(Base64.decode(token.bytes))

        def id = content.replaceAll('-' + salt, '')
        User user = User.get(id)
        user.accountLocked = false
        user.save(flush: true)
        return true
    }

    def generateRegistrationToken(User user) {
        def salt = grailsApplication.config.register.service.secret.key
        def key = user.id + '-' + salt
        return new String(Base64.encode(key.bytes))
    }
}
