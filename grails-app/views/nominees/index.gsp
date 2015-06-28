
<%@ page import="accounting.Nominees" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nominees.label', default: 'Nominees')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-nominees" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-nominees" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'nominees.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'nominees.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'nominees.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="dob" title="${message(code: 'nominees.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'nominees.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'nominees.firstName.label', default: 'First Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${nomineesInstanceList}" status="i" var="nomineesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${nomineesInstance.id}">${fieldValue(bean: nomineesInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: nomineesInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: nomineesInstance, field: "country")}</td>
					
						<td><g:formatDate date="${nomineesInstance.dob}" /></td>
					
						<td>${fieldValue(bean: nomineesInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: nomineesInstance, field: "firstName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${nomineesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
