<%@ page import="accounting.SubAccountHead; accounting.OpeningBalance" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'openingBalance.label', default: 'Opening Balance')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="dashIconWrap">
    <div class="heading" style="margin-bottom: 5px;">
        <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | <g:message code="default.list.label"
                                                                                  args="[entityName]"/>
        <div class="createUser">
            <i class="fa fa-user-plus"></i>
            <g:link class="create" action="create">
                <g:message code="default.new.label" args="[entityName]"/>
            </g:link>
        </div>
    </div>

    <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; ">
        <table class="table table-hover table_override">
            <thead>
            <tr class="thead_tr">
                <th style="color: #ffffff"><g:message code="openingBalance.accountHead.label"
                                                      default="Account Head"/></th>
                <th style="color: #ffffff"><g:message code="openingBalance.subAccountHead.label"
                                                      default="Sub Account Head"/></th>
                <th style="color: #ffffff"><g:message code="openingBalance.subCategory.label"
                                                      default="Sub Category"/></th>
                <g:sortableColumn property="debit"
                                  title="${message(code: 'openingBalance.debit.label', default: 'Is Debit?')}"/>
                <g:sortableColumn property="openingBalance"
                                  title="${message(code: 'openingBalance.openingBalance.label', default: 'Opening Balance')}"/>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${openingBalanceInstanceList}" status="i" var="openingBalanceInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                    <td>${accounting.SubAccountHead.findById(accounting.SubCategory.findById(fieldValue(bean: openingBalanceInstance, field: "subCategory.id")).subAccountHead.id).accountHead.name}</td>
                    <td>${accounting.SubCategory.findById(fieldValue(bean: openingBalanceInstance, field: "subCategory.id")).subAccountHead.name}</td>
                    <td>${fieldValue(bean: openingBalanceInstance, field: "subCategory.name")}</td>
                    <td><g:formatBoolean boolean="${openingBalanceInstance.debit}"/></td>
                    <td>${fieldValue(bean: openingBalanceInstance, field: "openingBalance")}</td>
                    <td>
                        <g:form method="get" action="edit" resource="${openingBalanceInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:form url="[resource: openingBalanceInstance, action: 'delete']" method="DELETE">
                            <button class="editDeleteBtn" type="submit"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                                <i class="fa fa-times" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                            </button>
                        </g:form>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<div class="pagination">
    <g:paginate total="${openingBalanceInstanceCount ?: 0}"/>
</div>
</body>
</html>