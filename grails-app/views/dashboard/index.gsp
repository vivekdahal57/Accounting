<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>${pageTitle}</title>
    <parameter name="username" value="${loggedIn}"/>
</head>
<body>
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
</body>
</html>
