
<%@ page import="accounting.CalendarMaintenance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendarMaintenance.label', default: 'CalendarMaintenance')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-calendarMaintenance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-calendarMaintenance" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="customYear" title="${message(code: 'calendarMaintenance.customYear.label', default: 'Custom Year')}" />
					
						<g:sortableColumn property="endDateInAD" title="${message(code: 'calendarMaintenance.endDateInAD.label', default: 'End Date In AD')}" />
					
						<g:sortableColumn property="month1" title="${message(code: 'calendarMaintenance.month1.label', default: 'Month1')}" />
					
						<g:sortableColumn property="month10" title="${message(code: 'calendarMaintenance.month10.label', default: 'Month10')}" />
					
						<g:sortableColumn property="month11" title="${message(code: 'calendarMaintenance.month11.label', default: 'Month11')}" />
					
						<g:sortableColumn property="month12" title="${message(code: 'calendarMaintenance.month12.label', default: 'Month12')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calendarMaintenanceInstanceList}" status="i" var="calendarMaintenanceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calendarMaintenanceInstance.id}">${fieldValue(bean: calendarMaintenanceInstance, field: "customYear")}</g:link></td>
					
						<td><g:formatDate date="${calendarMaintenanceInstance.endDateInAD}" /></td>
					
						<td>${fieldValue(bean: calendarMaintenanceInstance, field: "month1")}</td>
					
						<td>${fieldValue(bean: calendarMaintenanceInstance, field: "month10")}</td>
					
						<td>${fieldValue(bean: calendarMaintenanceInstance, field: "month11")}</td>
					
						<td>${fieldValue(bean: calendarMaintenanceInstance, field: "month12")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calendarMaintenanceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
