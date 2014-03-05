<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>One Health Hub</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
    <div id="spinner" class="spinner" style="display:none;">
        <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
    </div>
    <div style="width:100%;overflow:auto;">
    </div>
    <sec:ifLoggedIn>
    <g:set var="userId" value="${sec.loggedInUserInfo(field: 'id')}"/>
    <div style="height:50px; padding:0 20px;">
        <fieldset class="buttons">
            <g:link controller="home" action="index">Home</g:link>
            <g:link controller="userAccount" action="getUserAccount" params="[id: userId]">Account</g:link>


            <sec:ifAllGranted roles="ROLE_PATIENT">

            </sec:ifAllGranted>
            <sec:ifAllGranted roles="ROLE_DOCTOR">

            </sec:ifAllGranted>

            <g:link controller="logout" action="index">Logout</g:link>
        </fieldset>
    </div>
    </sec:ifLoggedIn>

    <div id="container" style="margin-left:20px;">
        <g:layoutBody />
    </div>
	</body>
</html>
