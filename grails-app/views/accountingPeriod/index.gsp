<%@ page import="accounting.AccountingPeriod" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'accountingPeriod.label', default: 'Accounting Period')}"/>
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

                <g:sortableColumn property="startDate"
                                  title="${message(code: 'accountingPeriod.startDate.label', default: 'Start Date')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="endDate"
                                  title="${message(code: 'accountingPeriod.endDate.label', default: 'End Date')}"
                                  style="text-align:center;"/>
                <g:sortableColumn property="isDefault"
                                  title="${message(code: 'accountingPeriod.isDefault.label', default: 'Is Default')}"
                                  style="text-align:center;"/>
                <g:sortableColumn colspan="2" property="action" title="Action" style="text-align:center;"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${accountingPeriodInstanceList}" status="i" var="accountingPeriodInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                    <td>${accountingPeriodInstance.startDate.format('yyyy/MM/dd')}</td>
                    <td>${accountingPeriodInstance.endDate.format('yyyy/MM/dd')}</td>
                    <td><g:formatBoolean boolean="${accountingPeriodInstance.isDefault}" /></td>

                    <td>
                        <g:form method="get" action="edit" resource="${accountingPeriodInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:if test="${accountingPeriodInstance.isDefault != true}">
                            <g:form url="[resource: accountingPeriodInstance, action: 'delete']" method="DELETE">
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
    <g:paginate total="${accountingPeriodInstance ?: 0}"/>
</div>
</body>
</html>
