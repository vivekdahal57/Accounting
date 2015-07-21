<%@ page import="accounting.AccountHead" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'accountHead.label', default: 'Account Head')}"/>
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
                <g:sortableColumn property="name" title="${message(code: 'accountHead.name.label', default: 'Name')}"/>
                <g:sortableColumn colspan="2" property="action" title="Action" style="text-align:center;"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${accountHeadInstanceList}" status="i" var="accountHeadInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">

                    <td>${fieldValue(bean: accountHeadInstance, field: "name")}</td>
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
