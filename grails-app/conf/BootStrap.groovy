import com.ohh.security.Role

class BootStrap {

    def init = { servletContext ->
        seedDatabase()
    }

    def destroy = {
    }

    /**
     * Seed min database data
     */
    def seedDatabase() {
        log.info("Verify min ROLE_PATIENT and ROLE_DOCTOR is in place...")
        def pRole = Role.findByAuthority('ROLE_PATIENT')
        if (!pRole) {
            // missing patient role, create it
            log.info('Missing ROLE_PATIENT, creating role...')
            new Role(authority: 'ROLE_PATIENT').save(flush: true, validate: true)
            assert Role.findByAuthority('ROLE_PATIENT') != null
        }

        def dRole = Role.findByAuthority('ROLE_DOCTOR')
        if (!dRole) {
            // missing doctor role, create it
            log.info('Missing ROLE_DOCTOR, creating role...')
            new Role(authority: 'ROLE_DOCTOR').save(flush: true, validate: true)
            assert Role.findByAuthority('ROLE_DOCTOR') != null
        }
    }
}
