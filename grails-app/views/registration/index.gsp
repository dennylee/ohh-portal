<g:set var="regType" value="Patient"/>
<g:if test="${params.type == 'd'}">
    <g:set var="regType" value="Doctor"/>
</g:if>



<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>${regType} Registration</title>
</head>

<body>

<div id="create-patient" class="content scaffold-create" role="main">
    <h1>${regType} Registration</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${registrationUserCommand}">
        <ul class="errors" role="alert">
            <g:eachError bean="${registrationUserCommand}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form controller="registration" action="register">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Register"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
