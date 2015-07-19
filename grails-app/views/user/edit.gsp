<%@ page import="authorization.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <!--<div id="edit-user" class="content scaffold-edit" role="main">-->
            <div class="dashIconWrap">
                <div class="heading" style="margin-bottom: 5px;">
                    <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | 
                    <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link> | 
                    <g:message code="default.edit.label" args="[entityName]" />
                    <div class="createUser"><i class="fa fa-user-plus"></i> <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></div>
                    </div>
                <g:hasErrors bean="${userInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${userInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                            </g:eachError>
                    </ul>
                </g:hasErrors>
                <div class="panel panel-default" style="width: 500px; padding: 10px 10px 0px 10px">
                    <g:form url="[resource:userInstance, action:'update']" method="PUT" >
                        <g:hiddenField name="version" value="${userInstance?.version}" />
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:actionSubmit class="save btn btn-default btn_login_override" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
        <!--</div>-->
    </body>
</html>
