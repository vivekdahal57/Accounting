<html>
<head>
    <meta name="layout" content="main">
    <title>Login:Custom</title>
</head>

<body>
<span href="#" class="button" id="toggle-login">Log in</span>

<div id='login'>
    <div id="triangle"></div>

    <h1>Log in</h1>
    <g:if test='${flash.message}'>
        <div class='login_message'>${flash.message}</div>
    </g:if>

    <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
        <input type='text' class='text_' name='j_username' id='username' placeholder="UserName"/>
        <input type='password' class='text_' name='j_password' id='password' placeholder="Password"/>
        <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
        <p id="remember_me_holder">
            <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                   <g:if test='${hasCookie}'>checked='checked'</g:if>/>
            <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
        </p>
    </form>
</div>
<script type='text/javascript'>
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
</script>

</body>
</html>
