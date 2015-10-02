<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>${pageTitle}</title>
</head>

<body>
<div class="dashIconWrap">
    <div class="heading" style="margin-bottom: 5px;">
        <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | ${pageTitle}
    </div>

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
</body>
</html>