%{--<%@ page import="com.ohh.Patient" %>--}%
%{--<%@ page import="com.ohh." %>--}%



<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'username', 'error')} required">
    <label for="username">
        <g:message code="patient.username.label" default="Username" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="username" required="" value="${patientRegisterInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="patient.password.label" default="Password" />
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="password" required="" value="${patientRegisterInstance?.password}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'confirmPassword', 'error')} required">
    <label for="password">
        Confirm Password
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="confirmPassword" required="" value="${patientRegisterInstance?.confirmPassword}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'phoneNumber', 'error')} ">
    <label for="phoneNumber">
        <g:message code="patient.phoneNumber.label" default="Phone Number" />

    </label>
    <g:textField name="phoneNumber" maxlength="10" pattern="${patientRegisterInstance.constraints.phoneNumber.matches}" value="${patientRegisterInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="patient.email.label" default="Email (Optional)" />

    </label>
    <g:textField name="email" maxlength="100" value="${patientRegisterInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'gender', 'error')} required">
    <label for="gender">
        <g:message code="patient.gender.label" default="Gender" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="gender" from="${patientRegisterInstance.constraints.gender.inList}" required="" value="${patientRegisterInstance?.gender}" valueMessagePrefix="patient.gender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'dob', 'error')} required">
    <label for="dob">
        <g:message code="patient.dob.label" default="Dob" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dob" precision="day"  value="${patientRegisterInstance?.dob}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'martialStatus', 'error')} required">
    <label for="martialStatus">
        <g:message code="patient.martialStatus.label" default="Martial Status" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="martialStatus" from="${patientRegisterInstance.constraints.martialStatus.inList}" required="" value="${patientRegisterInstance?.martialStatus}" valueMessagePrefix="patient.martialStatus"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'firstname', 'error')} required">
    <label for="firstname">
        <g:message code="patient.firstname.label" default="Firstname" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstname" maxlength="50" required="" value="${patientRegisterInstance?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'middlename', 'error')} ">
    <label for="middlename">
        <g:message code="patient.middlename.label" default="Middlename" />

    </label>
    <g:textField name="middlename" maxlength="50" value="${patientRegisterInstance?.middlename}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'lastname', 'error')} required">
    <label for="lastname">
        <g:message code="patient.lastname.label" default="Lastname" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="lastname" maxlength="50" required="" value="${patientRegisterInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'weight', 'error')} required">
    <label for="weight">
        <g:message code="patient.weight.label" default="Weight (lbs)" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="weight" type="number" value="${patientRegisterInstance.weight}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'height', 'error')} required">
    <label for="height">
        <g:message code="patient.height.label" default="Height (cm)" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="height" type="number" value="${patientRegisterInstance.height}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'eyeColour', 'error')} required">
    <label for="eyeColour">
        <g:message code="patient.eyeColour.label" default="Eye Colour" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="eyeColour" maxlength="15" required="" value="${patientRegisterInstance?.eyeColour}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'bloodType', 'error')} required">
    <label for="bloodType">
        <g:message code="patient.bloodType.label" default="Blood Type" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="bloodType" from="${patientRegisterInstance.constraints.bloodType.inList}" required="" value="${patientRegisterInstance?.bloodType}" valueMessagePrefix="patient.bloodType"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'country', 'error')} required">
    <label for="country">
        <g:message code="patient.country.label" default="Country" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="country" maxlength="75" required="" value="${patientRegisterInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'state', 'error')} required">
    <label for="state">
        <g:message code="patient.state.label" default="State" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="state" maxlength="75" required="" value="${patientRegisterInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'city', 'error')} required">
    <label for="city">
        <g:message code="patient.city.label" default="City" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="city" maxlength="75" required="" value="${patientRegisterInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'address', 'error')} required">
    <label for="address">
        <g:message code="patient.address.label" default="Address" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="address" maxlength="100" required="" value="${patientRegisterInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientRegisterInstance, field: 'postalCode', 'error')} required">
    <label for="postalCode">
        <g:message code="patient.postalCode.label" default="Postal Code" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="postalCode" maxlength="10" required="" value="${patientRegisterInstance?.postalCode}"/>
</div>
