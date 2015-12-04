<!DOCTYPE html>
<html>
    <head>
        <title>Mobile Detection</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/angular.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/dropdown.js"></script>
        <script type="text/javascript" src="js/collapse.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default" id="nav">
            <div class="container-fluid"> 
                <!-- Brand and toggle get grouped for better mobile display --> 
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Brand</a> 
                </div> 
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav"> 
                        <li id="active_link"><a href="#">Home <span class="sr-only">(current)</span></a></li> 
                        <li><a href="#">Account</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu"> 
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li> 
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li> 
                    </ul> 
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu"> 
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li> 
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li> 
                            </ul> 
                        </li> 
                    </ul> 
                </div><!-- /.navbar-collapse --> 
            </div><!-- /.container-fluid --> 
        </nav>


        <div class="sidebar">
            Sidebar
        </div>
        
        <div class="content-wrap">div2</div>
        
        <div class="footer">Copyright &copy; 2015 Accounting Practice. All Rights Reserved.</div>

        <!--        <div data-ng-app="">
                    <p>Name : <input type="text" data-ng-model="name"></p>
                    <h1>Hello {{name}}</h1>
                </div>-->

    </body>
</html>