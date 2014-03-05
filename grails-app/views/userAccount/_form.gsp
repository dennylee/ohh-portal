<g:hiddenField name="userId" value="${user?.id}"/>

<div class="fieldcontain ${hasErrors(bean: user, field: 'username', 'error')}">
    <label for="username">
        Email
    </label>
    ${user?.username}
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'phoneNumber', 'error')}">
    <label for="phoneNumber">
        Phone Number
    </label>
    <g:textField name="phoneNumber" value="${user?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'gender', 'error')}">
    <label for="gender">
        Gender
    </label>
    <g:select name="gender" from="${user?.constraints.gender.inList}" value="${user?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'dob', 'error')}">
    <label for="dob">
        Date Of Birth
    </label>
    <g:datePicker name="dob"value="${user?.dob}" precision="day"/>
</div>

<sec:ifAllGranted roles="ROLE_PATIENT">
<div class="fieldcontain ${hasErrors(bean: user, field: 'martialStatus', 'error')}">
    <label for="martialStatus">
        Martial Status
    </label>
    <g:select name="martialStatus" from="${user?.constraints.martialStatus.inList}" value="${user?.martialStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'firstname', 'error')} required">
    <label for="firstname">
        First Name <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstname" required="" value="${user?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'lastname', 'error')} required">
    <label for="lastname">
        Last Name <span class="required-indicator">*</span>
    </label>
    <g:textField name="lastname" required="" value="${user?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'weight', 'error')}">
    <label for="weight">
        Weight
    </label>
    <g:textField name="weight" value="${user?.weight}"/> lbs
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'height', 'error')}">
    <label for="height">
        Height
    </label>
    <g:textField name="height" value="${user?.height}"/> cm
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'eyeColour', 'error')}">
    <label for="eyeColour">
        Eye Colour
    </label>
    <g:textField name="eyeColour" value="${user?.eyeColour}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'bloodType', 'error')}">
    <label for="bloodType">
        Blood Type
    </label>
    <g:select name="bloodType" from="${user?.constraints.bloodType.inList}" value="${user?.bloodType}"/>
</div>

</sec:ifAllGranted>

<div class="fieldcontain ${hasErrors(bean: user, field: 'country', 'error')}">
    <label for="country">
        Height
    </label>
    <g:countrySelect name="country" value="${user?.country}" default="can"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'state', 'error')}">
    <label for="state">
        State
    </label>
    <g:textField name="state" value="${user?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'city', 'error')}">
    <label for="city">
        City
    </label>
    <g:textField name="city" value="${user?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'address', 'error')}">
    <label for="address">
        Address
    </label>
    <g:textField name="address" value="${user?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: user, field: 'postalCode', 'error')}">
    <label for="postalCode">
        Postal Code
    </label>
    <g:textField name="postalCode" value="${user?.postalCode}"/>
</div>