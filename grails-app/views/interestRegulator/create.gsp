<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'intrestRegulator.label', default: 'Intrest Regulator')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div id="create-user" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="dashIconWrap">
        <div class="heading" style="margin-bottom: 5px;">
            <a class="home" href="${createLink(uri: '/')}">Dashboard</a> |
        <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link> |
        <g:message code="default.create.label" args="[entityName]" />
        </div>
        <g:hasErrors bean="${intrestRegulator}">
            <ul class="errors" role="alert">
                <g:eachError bean="${intrestRegulator}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <div class="panel panel-default" style="padding: 10px;margin-right: 5px;">
            <h6 class="heading" style="font-weight: bold; margin: 0px 0px 10px 0px !important;"><g:message code="default.create.label" args="[entityName]" /></h6>
            <g:form url="[resource:intrestRegulator, action:'save']" >
                <fieldset class="form" style="margin-left: 10px;">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save btn btn-default btn_login_override" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
