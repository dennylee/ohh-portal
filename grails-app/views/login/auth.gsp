<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name='layout' content='main'/>
    <title>Login</title>
</head>

<body>
<div id='login'>
    <div class='inner'>
        </br>

        <g:if test='${flash.message}'>
            <div class='login_message'>${flash.message}</div>
        </g:if>

        <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>

                <label for='username'>Username:</label>
                <input type='text' class='text_' name='j_username' id='username'/>
                <label for='password'>Password:</label>
                <input type='password' class='text_' name='j_password' id='password'/>

            %{--<p id="remember_me_holder">--}%
                %{--<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>--}%
                %{--<label for='remember_me'>Remember me</label>--}%
            %{--</p>--}%

                <input type='submit' id="submit" value='Login'/>

        </form>

        </br><g:link controller='registration' action='index' params="[type: 'p']">Patient Register</g:link>
        </br><g:link controller='registration' action='index' params="[type: 'd']">Doctor Register</g:link>

    </div>
</div>

<script type='text/javascript'>
    <!--
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
