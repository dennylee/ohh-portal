<div class="fieldcontain ${hasErrors(bean: registrationUserCommand, field: 'firstname', 'error')} required">
    <label for="firstname">
        First Name <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstname" required="" value="${registrationUserCommand?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationUserCommand, field: 'lastname', 'error')} required">
    <label for="lastname">
        Last Name <span class="required-indicator">*</span>
    </label>
    <g:textField name="lastname" required="" value="${registrationUserCommand?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationUserCommand, field: 'username', 'error')} required">
    <label for="username">
        Email <span class="required-indicator">*</span>
    </label>
    <g:textField name="username" required="" value="${registrationUserCommand?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationUserCommand, field: 'confirmUsername', 'error')} required">
    <label for="confirmUsername">
        Confirm Email <span class="required-indicator">*</span>
    </label>
    <g:textField name="confirmUsername" required="" value=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationUserCommand, field: 'password', 'error')} required">
    <label for="password">
        Password <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="password" required="" value="" />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationUserCommand, field: 'confirmPassword', 'error')} required">
    <label for="confirmPassword">
        Confirm Password <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="confirmPassword" required="" value="" />
</div>

<g:hiddenField name="type" value="${registrationUserCommand.type}"/>

