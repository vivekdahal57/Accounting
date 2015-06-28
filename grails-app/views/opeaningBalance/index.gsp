
<%@ page import="accounting.OpeaningBalance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opeaningBalance.label', default: 'OpeaningBalance')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-opeaningBalance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-opeaningBalance" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="opeaningBalance.accountHead.label" default="Account Head" /></th>
					
						<g:sortableColumn property="debit" title="${message(code: 'opeaningBalance.debit.label', default: 'Debit')}" />
					
						<g:sortableColumn property="openingBalance" title="${message(code: 'opeaningBalance.openingBalance.label', default: 'Opening Balance')}" />
					
						<th><g:message code="opeaningBalance.subAccountHead.label" default="Sub Account Head" /></th>
					
						<th><g:message code="opeaningBalance.subCategory.label" default="Sub Category" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${opeaningBalanceInstanceList}" status="i" var="opeaningBalanceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${opeaningBalanceInstance.id}">${fieldValue(bean: opeaningBalanceInstance, field: "accountHead")}</g:link></td>
					
						<td><g:formatBoolean boolean="${opeaningBalanceInstance.debit}" /></td>
					
						<td>${fieldValue(bean: opeaningBalanceInstance, field: "openingBalance")}</td>
					
						<td>${fieldValue(bean: opeaningBalanceInstance, field: "subAccountHead")}</td>
					
						<td>${fieldValue(bean: opeaningBalanceInstance, field: "subCategory")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${opeaningBalanceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
