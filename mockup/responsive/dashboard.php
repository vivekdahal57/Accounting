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
    <body>
        <nav class="navbar navbar-default" id="nav">
            <div class="container-fluid"> 
                <!-- Brand and toggle get grouped for better mobile display --> 
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars" style="font-size: 20px"></span>
                                                <!--<span class="icon-bar"></span>-->
                        <!--<span class="icon-bar"></span>--> 
                    </button>
                    <a class="navbar-brand" href="#">Brand</a> 
                </div> 
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main-nav-bar">
                    <ul class="nav navbar-nav"> 
                        <li id="active_link"><a href="#">Home <span class="sr-only">(current)</span></a></li> 
                        <li><a href="#">Account</a></li>
                        <li><a href="dashboard.php">DashBoard</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="fa fa-caret-down"></span></a>
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
                        <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="fa fa-caret-down"></span></a>
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




        <div class="popupBackground" id="popupBackground"></div>

        <!--sidebar start-->
        <div class="panel panel-default sidebar" id="sidebar">
            <div class="panel-heading" style="border-radius: 0px;">Sidebar
                <a href="javascript:void(0);" id="closeSidebar">
                    <i class="fa fa-close"></i>
                </a> 
            </div>
            <div class="panel-body sidebarList">
                <ul>
                    <li><a href="#"><div>Home</div></a></li>
                    <li><a href="#"><div>Home</div></a></li>
                    <li><a href="#"><div>Home</div></a></li>
                    <li><a href="#"><div>Home</div></a></li>
                    <li><a href="#"><div>Home</div></a></li>
                    <li><a href="#"><div>Home</div></a></li>
                </ul>
            </div>
        </div>
        <!--sidebar end-->
        <div class="content-wrap" id="cont-wrap">
            <div class="col-md-12 table-wrap">
                <div class="pageTitle">
                    <h3>Dashboard</h3>
                    <a href="javascript:void(0);" id="sideBarLink" alt="Access Sidebar" title="Access SideBar">
                        <div class="btnWrap"><i class="fa fa-sign-in"></i></div>
                    </a>
                </div>

                <div class="dashBoardBg" id="dashBoardBg">
                    <div class="dashIconWrap">
                        <div class="dashIconLink">
                            <a href="#">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="glyphicon glyphicon-blackboard"></i>

                                        <div class="dashIconOverlay">Chart of Account</div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="dashIconLink">
                            <g:link controller="openingBalance" action="index">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-money"></i>

                                        <div class="dashIconOverlay">Opening Balance</div>
                                    </div>
                                </div>
                            </g:link>
                        </div>

                        <div class="dashIconLink">
                            <g:link controller="accountingPeriod" action="index">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="glyphicon glyphicon-time"></i>

                                        <div class="dashIconOverlay">Accounting Period</div>
                                    </div>
                                </div>
                            </g:link>
                        </div>

                        <div class="dashIconLink">
                            <g:link controller="calendarMaintenance" action="index">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-calendar"></i>

                                        <div class="dashIconOverlay">Calender Maintenance</div>
                                    </div>
                                </div>
                            </g:link>
                        </div>

                        <div class="dashIconLink">
                            <g:link controller="interestRegulator" action="index">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="glyphicon glyphicon-piggy-bank"></i>

                                        <div class="dashIconOverlay">Interest Regulation</div>
                                    </div>
                                </div>
                            </g:link>
                        </div>

                        <div class="dashIconLink">
                            <a href="#">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-suitcase"></i>

                                        <div class="dashIconOverlay">Member A/C Details</div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="dashIconLink">
                            <a href="#">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-eye"></i>

                                        <div class="dashIconOverlay">Granted Witness</div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="dashIconLink">
                            <a href="#">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="glyphicon glyphicon-open-file"></i>

                                        <div class="dashIconOverlay">Opening Interest B/F</div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="dashIconLink">
                            <a href="#">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-book"></i>

                                        <div class="dashIconOverlay">Check Book Chart</div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="dashIconLink">
                            <g:link controller="reports" action="index">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-bar-chart"></i>

                                        <div class="dashIconOverlay">Reports</div>
                                    </div>
                                </div>
                            </g:link>
                        </div>

                        <div class="dashIconLink">
                            <g:link controller="utility" action="index">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-wrench"></i>

                                        <div class="dashIconOverlay">Utility</div>
                                    </div>
                                </div>
                            </g:link>
                        </div>

                        <div class="dashIconLink">
                            <a href="#">
                                <div class="col-md-2">
                                    <div class="dashIcon">
                                        <i class="fa fa-desktop"></i>

                                        <div class="dashIconOverlay">System</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
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