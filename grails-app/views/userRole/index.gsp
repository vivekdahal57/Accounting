
<%@ page import="authorization.UserRole" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
        <title>NanceCount :<g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="dashIconWrap">
            <div class="heading" style="margin-bottom: 5px;">
                <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | <g:message code="default.list.label" args="[entityName]" />
                <div class="createUser"><i class="fa fa-user-plus"></i> <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></div>
                </div>
                <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; ">
                     <table class="table table-hover table_override">
                        <thead>
                            <tr class="thead_tr">
                            <g:sortableColumn property="role" title="${message(code: 'userRole.role.label', default: 'Role')}" style="text-align:center;" />
                            <g:sortableColumn property="user" title="${message(code: 'userRole.user.label', default: 'User')}" style="text-align:center;"/>
                            <g:sortableColumn property="action" title="Action" style="text-align:center;"/>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${userRoleInstanceList}" status="i" var="userRoleInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                                <td>${fieldValue(bean: userRoleInstance, field: "role")}</td>
                                <td>${fieldValue(bean: userRoleInstance, field: "user")}</td>
                                <td>
                                    <a href="javascript:void(0);" onclick="editDeleteShow(${userRoleInstance});" onblur="editDeleteHide(${userRoleInstance})" style="color:#000;font-size:14px;" id="editDelete">
                                        <i class="fa fa-cog" title="Edit | Delete" alt="Edit | Delete"></i>
                                    </a>
                                    <div id="editDeleteForm${userRoleInstance.role}" class="editDeleteForm">
                                        <g:form url="[resource:userInstance, action:'delete']" method="DELETE">
                                            <g:link class="edit" action="edit" resource="${userRoleInstance}">
                                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                                            </g:link>
                                            <button id="deleteBtn" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                                                <i class="fa fa-times" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                                            </button>
                                        </g:form>
                                    </div>
                                </td>
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="pagination">
            <g:paginate total="${userInstanceCount ?: 0}" />
        </div>
    </body>
</html>
