
<%@ page import="accounting.Voucher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'voucher.label', default: 'Voucher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-voucher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-voucher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="voucherNo" title="${message(code: 'voucher.voucherNo.label', default: 'Voucher No')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'voucher.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="bank" title="${message(code: 'voucher.bank.label', default: 'Bank')}" />
					
						<g:sortableColumn property="chequeNo" title="${message(code: 'voucher.chequeNo.label', default: 'Cheque No')}" />
					
						<g:sortableColumn property="currency" title="${message(code: 'voucher.currency.label', default: 'Currency')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'voucher.date.label', default: 'Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${voucherInstanceList}" status="i" var="voucherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${voucherInstance.id}">${fieldValue(bean: voucherInstance, field: "voucherNo")}</g:link></td>
					
						<td>${fieldValue(bean: voucherInstance, field: "amount")}</td>
					
						<td><g:formatBoolean boolean="${voucherInstance.bank}" /></td>
					
						<td>${fieldValue(bean: voucherInstance, field: "chequeNo")}</td>
					
						<td>${fieldValue(bean: voucherInstance, field: "currency")}</td>
					
						<td><g:formatDate date="${voucherInstance.date}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${voucherInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
