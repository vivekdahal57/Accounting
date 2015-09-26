<%@ page import="accounting.Voucher" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'voucher.label', default: 'Voucher')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
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

                <g:sortableColumn property="voucherNo"
                                  title="${message(code: 'voucher.voucherNo.label', default: 'Voucher No')}"/>
                <g:sortableColumn property="referenceId"
                                  title="${message(code: 'voucher.referenceId.label', default: 'Reference Id')}"/>
                <g:sortableColumn property="date" title="${message(code: 'voucher.date.label', default: 'Date')}"/>
                <g:sortableColumn property="name" title="${message(code: 'voucher.name.label', default: 'Name')}"/>
                <g:sortableColumn property="subCategory"
                                  title="${message(code: 'voucher.subCategory.label', default: 'Sub Category')}"/>
                <g:sortableColumn property="bank" title="${message(code: 'voucher.bank.label', default: 'Bank')}"/>
                <g:sortableColumn property="chequeNo"
                                  title="${message(code: 'voucher.chequeNo.label', default: 'Cheque No')}"/>
                <g:sortableColumn property="currency"
                                  title="${message(code: 'voucher.currency.label', default: 'Currency')}"/>
                <g:sortableColumn property="amount"
                                  title="${message(code: 'voucher.amount.label', default: 'Amount')}"/>
                <g:sortableColumn property="narration"
                                  title="${message(code: 'voucher.narration.label', default: 'Narration')}"/>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${voucherInstanceList}" status="i" var="voucherInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">

                    <td>${fieldValue(bean: voucherInstance, field: "voucherNo")}</td>
                    <td>${fieldValue(bean: voucherInstance, field: "referenceId")}</td>
                    <td>${voucherInstance.date.format('yyyy/MM/dd')}</td>
                    <td>${fieldValue(bean: voucherInstance, field: "name")}</td>
                    <td>${fieldValue(bean: voucherInstance, field: "subCategory.name")}</td>
                    <td><g:formatBoolean boolean="${voucherInstance.bank}"/></td>
                    <td>${fieldValue(bean: voucherInstance, field: "chequeNo")}</td>
                    <td>${fieldValue(bean: voucherInstance, field: "currency")}</td>
                    <td>${fieldValue(bean: voucherInstance, field: "amount")}</td>
                    <td>${fieldValue(bean: voucherInstance, field: "narration")}</td>
                    <td>
                        <g:form method="get" action="edit" resource="${voucherInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:form url="[resource: voucherInstance, action: 'delete']" method="DELETE">
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
    <g:paginate total="${voucherInstanceCount ?: 0}"/>
</div>
</body>
</html>
