<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Login - Accounting</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet" />
        <link href="css/supportStyle.css" type="text/css" rel="stylesheet" />
        <link href="css/mobileSupport.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
    </head>
    <body>
        <div class="panel panel-primary panel_login">
            <div class="panel-heading login_heading">
                <h4 class="panel-title">Login - Accounting</h4>
            </div>
            <div class="panel-body input_wrap">
                <form action="<?php echo baseUrl; ?>apanel/loginCheck" method="POST">
                    <div class="inner-addon left-addon">
                        <input type="text" class="form-control form_override" name="username" placeholder="Username"/>
                        <i class="glyphicon glyphicon-user"></i>
                    </div>
                    <div class="inner-addon left-addon">
                        <input type="password" class="form-control form_override" name="password" placeholder="Password"/>
                        <i class="glyphicon glyphicon-lock"></i>
                    </div>
                    <div style="margin-top:15px;">
                        <a href="javascript:void(0)">Forgot Password?</a>
                    </div>
                    <button type="submit" class="btn btn-default btn_login_override">Login</button>
                </form>
            </div>
        </div>
        <nav class="navbar navbar-default navbar-fixed-bottom" style="margin: 0px; border-top: 1px solid #60D5AC;">
            <div class="footer">
                Copyright &COPY; Accounting Package 2015. All Rights Reserved.
            </div>
        </nav>
    </body>
</html>

