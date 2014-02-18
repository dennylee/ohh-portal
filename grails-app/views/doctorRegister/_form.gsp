<%@ page import="com.ohh.Doctor" %>


<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="doctor.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${doctorRegisterInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="doctor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value="${doctorRegisterInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'confirmPassword', 'error')} required">
    <label for="password">
        Confirm Password
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="confirmPassword" required="" value="${doctorRegisterInstance?.confirmPassword}" />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="doctor.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" maxlength="10" pattern="${doctorRegisterInstance.constraints.phoneNumber.matches}" value="${doctorRegisterInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="doctor.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="100" value="${doctorRegisterInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="doctor.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${doctorRegisterInstance.constraints.gender.inList}" required="" value="${doctorRegisterInstance?.gender}" valueMessagePrefix="doctor.gender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="doctor.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${doctorRegisterInstance?.dob}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="doctor.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" maxlength="50" required="" value="${doctorRegisterInstance?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'middlename', 'error')} ">
	<label for="middlename">
		<g:message code="doctor.middlename.label" default="Middlename" />
		
	</label>
	<g:textField name="middlename" maxlength="50" value="${doctorRegisterInstance?.middlename}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="doctor.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" maxlength="50" required="" value="${doctorRegisterInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="doctor.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" maxlength="75" required="" value="${doctorRegisterInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="doctor.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" maxlength="75" required="" value="${doctorRegisterInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="doctor.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="75" required="" value="${doctorRegisterInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="doctor.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" maxlength="100" required="" value="${doctorRegisterInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorRegisterInstance, field: 'postalCode', 'error')} required">
	<label for="postalCode">
		<g:message code="doctor.postalCode.label" default="Postal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postalCode" maxlength="10" required="" value="${doctorRegisterInstance?.postalCode}"/>
</div>