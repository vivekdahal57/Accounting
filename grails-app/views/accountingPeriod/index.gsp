<%@ page import="accounting.AccountingPeriod" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'accountingPeriod.label', default: 'Accounting Period')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="pageTitle">
    <h3><g:message code="default.list.label" args="[entityName]"/></h3>
    <a href="javascript:void(0);" id="downloadLink" alt="Download Report" title="Download Report">
        <div class="btnWrap"><i class="fa fa-download"></i></div>
    </a>
    <a href="javascript:void(0);" id="sideBarLink" alt="Access Sidebar" title="Access SideBar">
        <div class="btnWrap"><i class="fa fa-sign-in"></i></div>
    </a>
</div>

<div class="addressBar">
    <g:link controller="dashboard" action="index" href="#">
        DashBoard
    </g:link> |
    <g:message code="default.list.label" args="[entityName]"/>
    <div class="addItem">
        <i class="fa fa-clock-o"></i>
        <g:link class="create" action="create">
            <g:message code="default.new.label" args="[entityName]"/>
        </g:link>
    </div>
</div>

<div id="dataTable"></div>
<script type="text/javascript">
    getData('${request.contextPath}/accountingPeriod/getIndexData');
</script>

</body>
</html>
