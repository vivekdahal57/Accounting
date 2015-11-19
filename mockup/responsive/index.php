<!DOCTYPE html>
<html>
    <head>
        <title>Mobile Detection</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/angular.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript" src="js/dropdown.js"></script>
        <script type="text/javascript" src="js/collapse.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default" id="nav">
            <div class="container-fluid"> 
                <!-- Brand and toggle get grouped for better mobile display --> 
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a class="navbar-brand" href="#">Brand</a> 
                </div> 
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main-nav-bar">
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

        <div class="content-wrap" id="cont-wrap">
            <div class="col-md-12 table-wrap">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">User Details</h3>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table_override">
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Name</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th colspan="2">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Vinaya Dahal</td>
                                    <td>Jorpati, Kathmandu</td>
                                    <td>9875632415</td>
                                    <td>Edit | Delete</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Vinaya Dahal</td>
                                    <td>Jorpati, Kathmandu</td>
                                    <td>9875632415</td>
                                    <td>Edit | Delete</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Vinaya Dahal</td>
                                    <td>Jorpati, Kathmandu</td>
                                    <td>9875632415</td>
                                    <td>Edit | Delete</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="panel-footer">Pagination Area</div>
                </div>
            </div>
        </div>

        <div class="footer" id="footer">Copyright &copy; 2015 Accounting Practice. All Rights Reserved.</div>

        <!--        <div data-ng-app="">
                    <p>Name : <input type="text" data-ng-model="name"></p>
                    <h1>Hello {{name}}</h1>
                </div>-->

    </body>
</html>