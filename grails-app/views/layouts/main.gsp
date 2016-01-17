<%@ page import="authorization.User" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>NanceCount: <g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="style.css"/>
    %{--<asset:stylesheet src="colors.css"/>--}%
    %{--<asset:stylesheet src="mobile-support.css"/>--}%
    <asset:javascript src="application.js"/>
    %{--<asset:javascript src="scripts.js"/>--}%
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-default" id="nav">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:if test="${!request.requestURL.contains('/login')}">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-bar"
                        aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="fa fa-bars" style="font-size: 20px"></span>
                </button>
            </g:if>
            <g:link controller="dashboard" action="index" class="navbar-brand">NanceCount</g:link>
        </div>
        <g:if test="${!request.requestURL.contains('/login')}">
            <div class="collapse navbar-collapse" id="main-nav-bar">
                <ul class="nav navbar-nav">
                    <li id="active_link"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Account</a></li>
                    <li><a href="dashboard.php">DashBoard</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">Dropdown <span class="fa fa-caret-down"></span></a>
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
                <g:if test="${authorization.UserController.getUserName()}">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user"
                                   style="font-size: 18px"></i> ${authorization.UserController.getUserName().capitalize()} <span
                                    class="fa fa-caret-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <g:form controller="logout" method="post" style="display: inline">
                                        <input type="submit" class="unameLinkLogout" value="Logout">
                                    </g:form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </g:if>
            </div>
        </g:if>
    </div>
</nav>

<!--Loading end-->
<div class="popupBackground" id="popupBackground"></div>

<div class="loading" id="loading">
    <h1>Loading...</h1>
</div>
<!--Loading end-->

<!--Confirm box start-->
<div class="panel panel-default confirm" id="confirm">
    <div class="panel-heading">
        <div id="confirm-title" style="display: inline-block"></div>
        <a href="javascript:void(0);" onclick="confirmClose();"><i class="fa fa-close"></i></a>
    </div>

    <div class="panel-body">
        <div style="padding-bottom: 15px;" id="confirm-body">
            %{--${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}--}%
        </div>
        <button type="button" class="btn brn-default btn-override"
                id="confirm-yes">Yes</button> <!-- change this line by passing onclick event from js-->
        <button type="button" class="btn brn-default btn-override" onclick="confirmClose();">No</button>
    </div>

</div>
<!--Confirm box end-->

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

<!--growl box-->
<div class="panel panel-default growlPanel" id="growlPanel">
    <a href="javascript:void(0);" id="closeGrowl">
        <i class="fa fa-close"></i>
    </a>

    <div id="message-area"><g:message code="${flash.message}"/></div>
</div>
<!--growl box end-->

<!--sidebar start-->
<div class="panel panel-default sidebar" id="sidebar">
    <div class="panel-heading" style="border-radius: 0px;">Sidebar
        <a href="javascript:void(0);" id="closeSidebar">
            <i class="fa fa-close"></i>
        </a>
    </div>

    <div class="panel-body sidebarList">
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name }}">
                <g:if test="${c.name != "Dbdoc" && c.name != "Login" && c.name != "Logout" && c.name != "Assets"}">
                    <li>
                        <g:link controller="${c.logicalPropertyName}">
                            <div>${c.name}</div>
                        </g:link>
                    </li>
                </g:if>
            </g:each>
        </ul>
    </div>
</div>
<!--sidebar end-->
<div class="content-wrap" id="cont-wrap">
    <div class="col-md-12 table-wrap">
        <g:layoutBody/>
    </div>
</div>

<div class="footer" id="footer">Copyright &copy; 2015 Accounting Practice. All Rights Reserved.</div>
<g:if test='${flash.message}'>
    <script type="text/javascript">
        showGrowl();
    </script>
</g:if>
<g:if test="${request.requestURL.contains('/login')}">
    <script type="text/javascript">
        setFooterLogin();
    </script>
</g:if>
</body>
</html>
