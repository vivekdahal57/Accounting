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

        <!--download panel start-->
        <div class="panel panel-default chooseFormatPanel" id="downloadOptions">
            <div class="panel-heading">Choose A File Format:
                <a href="javascript:void(0);" id="hideDownloadOption">
                    <i class="fa fa-close"></i>
                </a> 
            </div>
            <div class="panel-body" style="padding: 0px;">
                <div class="printIconsWrap">
                    <a href="#" class="printIcons" alt="XLS Format" title="XLS Format">
                        <i class="fa fa-file-excel-o"></i>
                    </a>
                </div>
                <div class="printIconsWrap">
                    <a href="#" class="printIcons" alt="PDF Format" title="PDF Format">
                        <i class="fa fa-file-pdf-o"></i>
                    </a>
                </div>
                <div class="printIconsWrap">
                    <a href="#" class="printIcons" alt="Word Format" title="Word Format">
                        <i class="fa fa-file-word-o"></i>
                    </a>
                </div>
            </div>
        </div>
        <!--download panel end-->

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
                    <h3>User Details</h3>
                    <a href="javascript:void(0);" id="downloadLink" alt="Download Report" title="Download Report">
                        <div class="btnWrap"><i class="fa fa-download"></i></div>
                    </a>
                    <a href="javascript:void(0);" id="sideBarLink" alt="Access Sidebar" title="Access SideBar">
                        <div class="btnWrap"><i class="fa fa-sign-in"></i></div>
                    </a>
                </div>

                <div class="addressBar">
                    <a href="#">DashBoard</a> > User Details
                    <div class="addItem">
                        <a href="#">Add New</a>
                    </div>
                </div>
                <table class="table table-hover table-striped table_override">
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
                            <td><a href="#"><i class="fa fa-edit"></i></a></td>
                            <td><a href="#"><i class="fa fa-close"></i></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Vinaya Dahal</td>
                            <td>Jorpati, Kathmandu</td>
                            <td>9875632415</td>
                            <td><a href="#"><i class="fa fa-edit"></i></a></td>
                            <td><a href="#"><i class="fa fa-close"></i></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Vinaya Dahal</td>
                            <td>Jorpati, Kathmandu</td>
                            <td>9875632415</td>
                            <td><a href="#"><i class="fa fa-edit"></i></a></td>
                            <td><a href="#"><i class="fa fa-close"></i></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="footer" id="footer">Copyright &copy; 2015 Accounting Practice. All Rights Reserved.</div>

        <!--        <div data-ng-app="">
                    <p>Name : <input type="text" data-ng-model="name"></p>
                    <h1>Hello {{name}}</h1>
                </div>-->

    </body>
</html>