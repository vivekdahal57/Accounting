<%@ page import="accounting.CalendarMaintenance" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'calendarMaintenance.label', default: 'CalendarMaintenance')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div id="create-user" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="content-wrap" id="cont-wrap">
        <div class="col-md-12 table-wrap">
            <div class="pageTitle">
                <h3><g:message code="default.create.label" args="[entityName]"/></h3>
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
                <g:link class="list" action="index">
                    <g:message code="default.list.label" args="[entityName]"/>
                </g:link> |
                <g:message code="default.create.label" args="[entityName]"/>
            </div>
            <g:hasErrors bean="${calendarMaintenanceInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${calendarMaintenanceInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="panel panel-default form-panel">
                <g:form url="[resource: calendarMaintenanceInstance, action: 'update']" method="PUT">
                    <fieldset class="form" style="margin-left: 10px;">
                        <g:render template="form"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="update" action="update" class="save btn btn-default btn_login_override"
                                        value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>
