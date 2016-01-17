<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'accountingPeriod.label', default: 'Accounting Period')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
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
            <g:hasErrors bean="${accountingPeriodInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${accountingPeriodInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="panel panel-default form-panel">
                <g:form url="[resource: accountingPeriodInstance, action: 'save']">
                    <fieldset class="form">
                        <g:render template="form"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save btn btn-default btn_login_override"
                                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>
