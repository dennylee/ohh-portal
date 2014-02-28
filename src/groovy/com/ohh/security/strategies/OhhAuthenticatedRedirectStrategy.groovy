package com.ohh.security.strategies

import com.ohh.Doctor
import com.ohh.Patient
import org.springframework.security.web.RedirectStrategy

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class OhhAuthenticatedRedirectStrategy implements RedirectStrategy {
    def appConfig
    def springSecurityServiceBeanName

    @Override
    void sendRedirect(HttpServletRequest request, HttpServletResponse response, String url) throws IOException {
        def redirectMap = appConfig.config.home.dispatcher.handler.redirectMap

        // redirect based on what's in the map
        def user = appConfig.mainContext.getBean(springSecurityServiceBeanName).getCurrentUser()
        def redirectUrl = '/'
        if (user instanceof Patient) {
            redirectUrl = redirectMap['ROLE_PATIENT']
        } else if (user instanceof Doctor) {
            redirectUrl = redirectMap['ROLE_DOCTOR']
        }

        response.sendRedirect(redirectUrl)
    }

    void setAppConfig(def appConfig) {
        this.appConfig = appConfig
    }

    void setSpringSecurityServiceBeanName(def springSecurityServiceBeanName) {
        this.springSecurityServiceBeanName = springSecurityServiceBeanName
    }
}
