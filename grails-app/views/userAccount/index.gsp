<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Patient Profile</title>
</head>

<body>

<div id="create-patient" class="content scaffold-create" role="main">
    <h1>Account Profile</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${user}">
        <ul class="errors" role="alert">
            <g:eachError bean="${user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form controller="userAccount" action="updateUserAccount">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="update" value="Update"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
