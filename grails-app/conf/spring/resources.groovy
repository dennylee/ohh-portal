import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.web.authentication.AjaxAwareAuthenticationSuccessHandler

// Place your Spring DSL code here
beans = {
    // inject custom success handler to handle the redirect to patient/doctor home page
    authenticationSuccessHandler(AjaxAwareAuthenticationSuccessHandler) {
        def securityConfig = SpringSecurityUtils.securityConfig
        requestCache = ref('requestCache')
        defaultTargetUrl = securityConfig.successHandler.defaultTargetUrl // '/'
        alwaysUseDefaultTargetUrl = securityConfig.successHandler.alwaysUseDefault // false
        targetUrlParameter = securityConfig.successHandler.targetUrlParameter // 'spring-security-redirect'
        ajaxSuccessUrl = securityConfig.successHandler.ajaxSuccessUrl // '/login/ajaxSuccess'
        useReferer = securityConfig.successHandler.useReferer // false
        redirectStrategy = ref('ohhAuthenticatedRedirectStrategy')
    }

    ohhAuthenticatedRedirectStrategy(com.ohh.security.strategies.OhhAuthenticatedRedirectStrategy) {
        appConfig = grailsApplication
        springSecurityServiceBeanName = 'springSecurityService'
    }
}
