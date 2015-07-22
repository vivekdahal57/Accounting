<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'requestmap.label', default: 'Request Map')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
                <g:hasErrors bean="${requestmapInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${requestmapInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                            </g:eachError>
                    </ul>
                </g:hasErrors>
                <div class="panel panel-default" style="width: 500px; padding: 10px 10px 0px 10px">
                    <g:form url="[resource:requestmapInstance, action:'save']" >
                        <fieldset class="form">
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
