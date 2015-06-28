
<%@ page import="accounting.IntrestRegulator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'intrestRegulator.label', default: 'IntrestRegulator')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-intrestRegulator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-intrestRegulator" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="intrestRate" title="${message(code: 'intrestRegulator.intrestRate.label', default: 'Intrest Rate')}" />
					
						<g:sortableColumn property="intrestType" title="${message(code: 'intrestRegulator.intrestType.label', default: 'Intrest Type')}" />
					
						<g:sortableColumn property="maturityDays" title="${message(code: 'intrestRegulator.maturityDays.label', default: 'Maturity Days')}" />
					
						<th><g:message code="intrestRegulator.subAccountHead.label" default="Sub Account Head" /></th>
					
						<g:sortableColumn property="taxDeduction" title="${message(code: 'intrestRegulator.taxDeduction.label', default: 'Tax Deduction')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${intrestRegulatorInstanceList}" status="i" var="intrestRegulatorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${intrestRegulatorInstance.id}">${fieldValue(bean: intrestRegulatorInstance, field: "intrestRate")}</g:link></td>
					
						<td>${fieldValue(bean: intrestRegulatorInstance, field: "intrestType")}</td>
					
						<td>${fieldValue(bean: intrestRegulatorInstance, field: "maturityDays")}</td>
					
						<td>${fieldValue(bean: intrestRegulatorInstance, field: "subAccountHead")}</td>
					
						<td>${fieldValue(bean: intrestRegulatorInstance, field: "taxDeduction")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${intrestRegulatorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
