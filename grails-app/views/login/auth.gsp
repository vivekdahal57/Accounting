<!DOCTYPE html>
<%
session.invalidate()
response.setHeader("Cache-Control", "no-cache, no-store");
response.setHeader("Expires", "-1");
%>
<html lang="en">
    <head>
        <meta name="layout" content="main">
        <title><g:message code="springSecurity.login.title"/></title>
        <script language="JavaScript">
            javascript:window.history.forward(1);
        </script>
    </head>

    <body>
        <div class="panel panel-primary panel_login">
            <div class="login_heading">
                <h4 class="panel-title">Login - Accounting</h4>
            </div>
            <div class="panel-body input_wrap">
                <g:if test='${flash.message}'>
                    <div class='login_message'>${flash.message}</div>
                </g:if>
                <form action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
                    <div class="inner-addon left-addon">
                        <input type='text' class="form-control" name='j_username' id='username' placeholder="Username"/>
                        <i class="glyphicon glyphicon-user"></i>
                    </div>

                    <div class="inner-addon left-addon">
                        <input type='password' class="form-control" name='j_password' id='password' placeholder="Password"/>
                        <i class="glyphicon glyphicon-lock"></i>
                    </div>

                    <div class="checkbox" style="margin-top: 15px; ">
                        <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember' style="margin: -8px 5px 0px 0px; display: table-cell;border:none;outline: none;" <g:if test='${hasCookie}'>checked='checked'</g:if>/>&nbsp;
                            <label for="remember">Remember me</label>
                        </div>

                    <div style="margin-top:15px;">
                        <a href="javascript:void(0)">Forgot Password?</a>
                    </div>

                    <button type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="btn btn-default btn_login_override">Login</button>
                </form>
            </div>
            <script type='text/javascript'>
                (function () {
                document.forms['loginForm'].elements['j_username'].focus();
                })();
            </script>
        </div>
    </body>
</html>
