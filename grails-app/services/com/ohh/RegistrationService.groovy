package com.ohh

import com.ohh.exceptions.RegistrationException
import com.ohh.security.Role
import com.ohh.security.User
import com.ohh.security.UserRole
import org.springframework.transaction.annotation.Transactional

class RegistrationService {
    static transactional = false

    def springSecurityService
    def grailsApplication

    @Transactional
    def register(User user, String userType) throws RegistrationException {

        // determine user role
        def u
        def role
        def map = [
                firstname: user.firstname,
                lastname: user.lastname,
                username: user.username,
                password: springSecurityService.encodePassword(user.password, grailsApplication.config.password.salt)
        ]

        if (userType?.equals('d')) {
            role = 'ROLE_DOCTOR'
            u = new Doctor(map)
        } else if (userType?.equals('p')) {
            role = 'ROLE_PATIENT'
            u = new Patient(map)
        } else {
            throw new RegistrationException("Invalid user registration type: ${userType}")
        }

        // save this new user
        try {
            u.save(flush: true, validate: true)
            UserRole.create(u, Role.findByAuthority(role))
        } catch (Exception e) {
            log.error("Failed to register: ${e.getMessage()}")
            throw new RegistrationException("Failed to register '${user.username}'", e);
        }

        return u
    }
}
