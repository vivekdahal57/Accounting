<%@ page import="accounting.InterestRegulator" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'interestRegularot.label', default: 'Interest Regulator')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="dashIconWrap">
    <div class="heading" style="margin-bottom: 5px;">
        <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | <g:message code="default.list.label"
                                                                                  args="[entityName]"/>
        <div class="createUser"><i class="glyphicon glyphicon-piggy-bank"></i> <g:link class="create" action="create"><g:message
                code="default.new.label" args="[entityName]"/></g:link></div>
    </div>

    <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; ">
        <table class="table table-hover table_override">
            <thead>
            <tr class="thead_tr">
                <g:sortableColumn property="interestRate"
                                  title="${message(code: 'interestRegulator.interestRate.label', default: 'Interest Rate')}"/>

                <g:sortableColumn property="interestType"
                                  title="${message(code: 'interestRegulator.interestType.label', default: 'Interest Type')}"/>

                <g:sortableColumn property="maturityDays"
                                  title="${message(code: 'interestRegulator.maturityDays.label', default: 'Maturity Days')}"/>

                <th style="color:#ffffff;">Sub Account Head</th>

                <g:sortableColumn property="taxDeduction"
                                  title="${message(code: 'interestRegulator.taxDeduction.label', default: 'Tax Deduction')}"/>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${interestRegulatorInstanceList}" status="i" var="interestRegulatorInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">

                    <td>${fieldValue(bean: interestRegulatorInstance, field: "interestRate")}</td>

                    <td>${fieldValue(bean: interestRegulatorInstance, field: "interestType")}</td>

                    <td>${fieldValue(bean: interestRegulatorInstance, field: "maturityDays")}</td>

                    <td>${fieldValue(bean: interestRegulatorInstance, field: "subAccountHead.name")}</td>

                    <td>${fieldValue(bean: interestRegulatorInstance, field: "taxDeduction")}</td>
                    <td>
                        <g:form method="get" action="edit" resource="${interestRegulatorInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:form url="[resource: interestRegulatorInstance, action: 'delete']" method="DELETE">
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
    <g:paginate total="${interestRegulatorInstanceCount ?: 0}"/>
</div>
</body>
</html>
