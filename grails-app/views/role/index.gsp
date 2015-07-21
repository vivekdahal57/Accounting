
<%@ page import="authorization.Role" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
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
                            <g:sortableColumn property="authority" title="${message(code: 'role.authority.label', default: 'Authority')}" style="text-align:center;"/>
                            <g:sortableColumn colspan="2" property="action" title="Action" style="text-align:center;"/>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${roleInstanceList}" status="i" var="roleInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                                <td>${fieldValue(bean: roleInstance, field: "authority")}</td>
                                <td>
                                    <g:if test="${roleInstance.authority!='ROLE_ADMIN'}">
                                        <g:form method="get" action="edit" resource="${roleInstance}">
                                            <button class="editDeleteBtn">
                                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                                            </button>
                                        </g:form>
                                    </g:if>
                                </td>
                                <td>
                                    <g:if test="${roleInstance.authority!='ROLE_ADMIN'}">
                                        <button class="editDeleteBtn" type="submit" onclick="popupShow('${createLink(controller: 'role', action:'exceptList')}/${roleInstance.id}')">
                                            <i class="fa fa-times" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                                        </button>
                                    </g:if>
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
