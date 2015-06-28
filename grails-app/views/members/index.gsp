
<%@ page import="accounting.Members" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'members.label', default: 'Members')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-members" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-members" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'members.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'members.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'members.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="dob" title="${message(code: 'members.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'members.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'members.firstName.label', default: 'First Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${membersInstanceList}" status="i" var="membersInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${membersInstance.id}">${fieldValue(bean: membersInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: membersInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: membersInstance, field: "country")}</td>
					
						<td><g:formatDate date="${membersInstance.dob}" /></td>
					
						<td>${fieldValue(bean: membersInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: membersInstance, field: "firstName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${membersInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
