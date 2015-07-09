<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Utility - Accounting</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet" />
        <link href="css/supportStyle.css" type="text/css" rel="stylesheet" />
        <link href="css/mobileSupport.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top" >
            <div class="container-fluid">
                <div class="navbar-header" style="float:left">
                    <div class="logo">
                        <img src="images/logo.jpg" width="150" height="55">
                    </div>
                    <!--<a class="navbar-brand" href="#">Brand</a>-->
                </div>
                <a href="javascript:void();" id="menuSmall">
                    <div class="smallList" id="smallList">
                        <i class="fa fa-list-alt" style="font-size: 30px;color:#fff;text-align: center;"></i>
                    </div>
                </a>

                <div class="menuListSmall" id="menuListSmall">
                    <div class="menuItemSmall">
                        <i class="fa fa-tachometer menuSmallIcon"></i> <a href="#">Dashboard</a>
                    </div>
                    <div class="menuItemSmall" id="smallAcc">
                        <i class="fa fa-folder menuSmallIcon"></i> <a href="#">Account</a>
                    </div>
                    <div class="menuItemSmall">
                        <i class="fa fa-cogs menuSmallIcon"></i> <a href="#">Setting</a>
                    </div>
                    <div class="menuItemSmall">
                        <i class="fa fa-user menuSmallIcon"></i> <a href="#">Username</a>
                    </div>
                    <div class="menuItemSmall">
                        <i class="glyphicon glyphicon-off menuSmallIcon" style="font-size: 10px;"></i> <a href="#">Logout</a>
                    </div>
                </div>

                <div class="collapse navbar-collapse" id="menuItem">
                    <ul class="nav navbar-nav" id="menuUl">
                        <li>
                            <a href="#">
                                <i class="fa fa-tachometer menuIcon"></i>
                                Dashboard
                            </a>
                        </li>
                        <li id="accMgnt">
                            <a href="#">
                                <i class="fa fa-folder menuIcon"></i>
                                Account
                                <i class="glyphicon glyphicon-triangle-bottom"></i>
                            </a>
                            <div class="menu_list">
                                <div id="arrowUp"></div>
                                <div><a href="#">Deposit <i class="glyphicon glyphicon-triangle-right subMenuListIcon"></i></a></div>
                                <div><a href="#">Withdraw <i class="glyphicon glyphicon-triangle-right subMenuListIcon"></i></a></div>
                            </div>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-cogs menuIcon"></i>
                                Settings
                            </a>
                        </li>
                    </ul>
                    <div class="unameLogoutBox">
                        <i class="fa fa-user menuIcon"></i>
                        <a href="#" class="unameLink">Username</a>
                        <i class="glyphicon glyphicon-off"></i> 
                        <a href="#" class="unameLink">Logout</a>
                    </div>
                </div>
            </div>
        </nav>
        <div class="contentWrapper">
            <a href="javascript:void(0);" style="outline: none;">
                <span id="fixedShowHideBtn">
                    <i class="fa fa-angle-right navToggleBtn" id="mobileView"></i>
                </span>
            </a>
            <div class="panel panel-default leftPane" id="leftPane">
                <div class="navigationHeading" id="navHeading"></div>
                <a href="javascript:void(0);">
                    <span style="" id="showHideBtn">
                        <i class="fa fa-angle-left navToggleBtn"></i>
                    </span>
                </a>
            </div>
            <div class="panel panel-default rightPane" id="rightPane">
                <div class="dashIconWrap">
                    <div class="heading" style="margin-bottom: 5px;">Dashboard / Utility</div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-calculator"></i>
                                    <div class="dashIconOverlay">Interest Calculation</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-file-archive-o"></i>
                                    <div class="dashIconOverlay">Monthly MB Interest</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="glyphicon glyphicon-calendar"></i>
                                    <div class="dashIconOverlay">Repayment Schedule</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-cubes"></i>
                                    <div class="dashIconOverlay">Schemewise Interest</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-newspaper-o"></i>
                                    <div class="dashIconOverlay">MB Interest Screen</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-pencil-square-o"></i>
                                    <div class="dashIconOverlay">Update Indexing</div>
                                </div>
                            </div>
                        </a> 
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-users"></i>
                                    <div class="dashIconOverlay">Interest Capitalizer</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="glyphicon glyphicon-folder-close"></i>
                                    <div class="dashIconOverlay">End of Year Closing</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-user-times"></i>
                                    <div class="dashIconOverlay">A/C Head Deletion</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-briefcase"></i>
                                    <div class="dashIconOverlay">Collector Account</div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="dashIconLink">
                        <a href="#">
                            <div class="col-md-3">
                                <div class="dashIcon">
                                    <i class="fa fa-user-secret"></i>
                                    <div class="dashIconOverlay">A/C Wise Interest</div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default navbar-fixed-bottom" style="margin: 0px; border-top: 1px solid #60D5AC;">
            <div class="footer">
                Copyright &COPY; Accounting Package 2015. All Rights Reserved.
            </div>
        </nav>
    </body>
</html>

