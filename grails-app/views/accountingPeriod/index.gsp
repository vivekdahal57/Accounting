
<%@ page import="accounting.AccountingPeriod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountingPeriod.label', default: 'AccountingPeriod')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-accountingPeriod" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-accountingPeriod" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="endDate" title="${message(code: 'accountingPeriod.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="isDefault" title="${message(code: 'accountingPeriod.isDefault.label', default: 'Is Default')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'accountingPeriod.startDate.label', default: 'Start Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountingPeriodInstanceList}" status="i" var="accountingPeriodInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountingPeriodInstance.id}">${fieldValue(bean: accountingPeriodInstance, field: "endDate")}</g:link></td>
					
						<td><g:formatBoolean boolean="${accountingPeriodInstance.isDefault}" /></td>
					
						<td><g:formatDate date="${accountingPeriodInstance.startDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountingPeriodInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
