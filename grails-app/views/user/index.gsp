<%@ page import="authorization.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>NanceCount : <g:message code="default.list.label" args="[entityName]"/></title>
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
                <g:sortableColumn property="firstName"
                                  title="${message(code: 'user.firstName.label', default: 'Full Name')}"
                                  style="text-align:center;" defaultOrder="asc"/>
                <g:sortableColumn property="email"
                                  title="${message(code: 'user.email.label', default: 'Email')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="phone"
                                  title="${message(code: 'user.phone.label', default: 'Phone')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="username"
                                  title="${message(code: 'user.username.label', default: 'Username')}"
                                  style="text-align:center;"/>
                <th style="text-align:center;color: #ffffff">Role</th>
                <g:sortableColumn property="accountExpired"
                                  title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="accountLocked"
                                  title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="passwordExpired"
                                  title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}"
                                  style="text-align:center;"/>
                <g:sortableColumn colspan="2" property="action" title="Action" style="text-align:center;"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${userInstanceList}" status="i" var="userInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                    <td>${fieldValue(bean: userInstance, field: "fullName")}</td>
                    <td>${fieldValue(bean: userInstance, field: "email")}</td>
                    <td>${fieldValue(bean: userInstance, field: "phone")}</td>
                    <td>${fieldValue(bean: userInstance, field: "username")}</td>
                    <td>${userroles.findByUser(userInstance).role.authority}</td>
                    <td><g:checkBox name="accountExpired" value="${userInstance.accountExpired}"
                                    onclick="return false"/></td>
                    <td><g:checkBox name="accountLocked" value="${userInstance.accountLocked}"
                                    onclick="return false"/></td>
                    <td><g:checkBox name="enabled" value="${userInstance.enabled}" onclick="return false"/></td>
                    <td><g:checkBox name="passwordExpired" value="${userInstance.passwordExpired}"
                                    onclick="return false"/></td>
                    <td>
                        <g:form method="get" action="edit" resource="${userInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:if test="${sec.loggedInUserInfo(field: "username") != fieldValue(bean: userInstance, field: "username")}">
                            <g:form url="[resource: userInstance, action: 'delete']" method="DELETE">
                                <button class="editDeleteBtn" type="submit"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                                    <i class="fa fa-times" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                                </button>
                            </g:form>
                        </g:if>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<div class="pagination">
    <g:paginate total="${userInstanceCount ?: 0}"/>
</div>
</body>
</html>