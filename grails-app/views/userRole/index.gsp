<%@ page import="authorization.UserRole" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}"/>
    <title>NanceCount :<g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="dashIconWrap">
    <div class="heading" style="margin-bottom: 5px;">
        <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | <g:message code="default.list.label"
                                                                                  args="[entityName]"/>
        <div class="createUser"><i class="fa fa-user-plus"></i> <g:link class="create" action="create"><g:message
                code="default.new.label" args="[entityName]"/></g:link></div>
    </div>

    <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; ">
        <table class="table table-hover table_override">
            <thead>
            <tr class="thead_tr">
                <g:sortableColumn property="role" title="${message(code: 'userRole.role.label', default: 'Role')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="user" title="${message(code: 'userRole.user.label', default: 'User')}"
                                  style="text-align:center;"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${userRoleInstanceList}" status="i" var="userRoleInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                    <td>${fieldValue(bean: userRoleInstance, field: "role")}</td>
                    <td>${fieldValue(bean: userRoleInstance, field: "user")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<div class="pagination">
    <g:paginate total="${userInstanceCountCount ?: 0}"/>
</div>
</body>
</html>
