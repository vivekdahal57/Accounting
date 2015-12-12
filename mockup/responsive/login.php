<!DOCTYPE html >
<html>
    <head>
        <title>Mobile Detection</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!--<script type="text/javascript" src="js/angular.js"></script>-->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript" src="js/dropdown.js"></script>
        <script type="text/javascript" src="js/collapse.js"></script>
    </head>
    <body id="body">
        <nav class="navbar navbar-default" id="nav">
            <div class="container-fluid"> 
                <div class="navbar-header">
                    <!--                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar" aria-expanded="false">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="fa fa-bars" style="font-size: 20px"></span>
                                        </button>-->
                    <a class="navbar-brand" href="#">Brand</a> 
                </div> 
            </div>
        </nav>

        <div class="panel panel-primary panel_login">
            <div class="login_heading">
                <h4 class="panel-title">Login - Accounting</h4>
            </div>
            <div class="panel-body input_wrap">
                <g:if test='${flash.message}'>
                    <!--<div class='login_message'>${flash.message}</div>-->
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

                    <div class="checkbox" style="margin-top: 15px;">
                        <input type="checkbox" class="chk" id='remember' style="margin: -8px 5px 0px 0px; display: table-cell;border:none;outline: none;"/>
                        <label for="remember">Remember me</label>
                    </div>

                    <div style="margin-top:15px;">
                        <a href="javascript:void(0)">Forgot Password?</a>
                    </div>
                    
                    <button type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="btn btn-default btn_login_override">Login</button>
                </form>
            </div>
        </div>
        <div class="footer" id="footer">Copyright &copy; 2015 Accounting Practice. All Rights Reserved.</div>
    </body>
</html>