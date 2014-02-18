import com.ohh.Doctor
import com.ohh.Patient
import com.ohh.security.Role
import com.ohh.security.UserRole

class BootStrap {

    def init = { servletContext ->
        // TODO: for testing only
        def patientRole = new Role(authority: 'ROLE_PATIENT').save(flush: true)
        def doctorRole = new Role(authority: 'ROLE_DOCTOR').save(flush: true)

        def patient = new Patient(username: 'patient', password: 'patient', gender: 'Male', accountLocked: false).save(flush: true, validate: false)
        def doctor = new Doctor(username: 'doctor', password: 'doctor', accountLocked: false).save(flush: true, validate: false)

        UserRole.create(patient, patientRole, true)
        UserRole.create(doctor, doctorRole, true)

        assert Role.count() == 2
        assert Patient.count() == 1
        assert Doctor.count() == 1
        assert UserRole.count() == 2

    }
    def destroy = {
    }
}
