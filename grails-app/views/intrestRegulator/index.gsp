<%@ page import="accounting.IntrestRegulator" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'intrestRegularot.label', default: 'Intrest Regulator')}"/>
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
                <g:sortableColumn property="intrestRate"
                                  title="${message(code: 'intrestRegulator.intrestRate.label', default: 'Intrest Rate')}"/>

                <g:sortableColumn property="intrestType"
                                  title="${message(code: 'intrestRegulator.intrestType.label', default: 'Intrest Type')}"/>

                <g:sortableColumn property="maturityDays"
                                  title="${message(code: 'intrestRegulator.maturityDays.label', default: 'Maturity Days')}"/>

                <th style="color:#ffffff;">Sub Account Head</th>

                <g:sortableColumn property="taxDeduction"
                                  title="${message(code: 'intrestRegulator.taxDeduction.label', default: 'Tax Deduction')}"/>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${intrestRegulatorInstanceList}" status="i" var="intrestRegulatorInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">

                    <td>${fieldValue(bean: intrestRegulatorInstance, field: "intrestRate")}</td>

                    <td>${fieldValue(bean: intrestRegulatorInstance, field: "intrestType")}</td>

                    <td>${fieldValue(bean: intrestRegulatorInstance, field: "maturityDays")}</td>

                    <td>${fieldValue(bean: intrestRegulatorInstance, field: "subAccountHead")}</td>

                    <td>${fieldValue(bean: intrestRegulatorInstance, field: "taxDeduction")}</td>
                    <td>
                        <g:form method="get" action="edit" resource="${intrestRegulatorInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:form url="[resource: intrestRegulatorInstance, action: 'delete']" method="DELETE">
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
    <g:paginate total="${intrestRegulatorInstance ?: 0}"/>
</div>
</body>
</html>
