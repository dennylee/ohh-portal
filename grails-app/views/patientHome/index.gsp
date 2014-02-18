
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Welcome to Patient Home Page</title>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link controller='logout' action='index'>Logout</g:link></li>
        </ul>
    </div>

<div id="create-patient" class="content scaffold-create" role="main">
    <h1>Welcome ${patient?.lastname}, ${patient?.firstname} </h1>
    %{--<g:if test="${flash.message}">--}%
        %{--<div class="message" role="status">${flash.message}</div>--}%
    %{--</g:if>--}%
    %{--<g:hasErrors bean="${patientRegisterInstance}">--}%
        %{--<ul class="errors" role="alert">--}%
            %{--<g:eachError bean="${patientRegisterInstance}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message--}%
                        %{--error="${error}"/></li>--}%
            %{--</g:eachError>--}%
        %{--</ul>--}%
    %{--</g:hasErrors>--}%
    %{--<g:form action="register">--}%
        %{--<fieldset class="form">--}%
            %{--<g:render template="form"/>--}%
        %{--</fieldset>--}%
        %{--<fieldset class="buttons">--}%
            %{--<g:submitButton name="create" class="save"--}%
                            %{--value="Register"/>--}%
        %{--</fieldset>--}%
    %{--</g:form>--}%
</div>
</body>
</html>