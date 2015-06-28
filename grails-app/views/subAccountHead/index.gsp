
<%@ page import="accounting.SubAccountHead" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subAccountHead.label', default: 'SubAccountHead')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subAccountHead" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subAccountHead" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="subAccountHead.accountHead.label" default="Account Head" /></th>
					
						<g:sortableColumn property="isIntrest" title="${message(code: 'subAccountHead.isIntrest.label', default: 'Is Intrest')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'subAccountHead.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subAccountHeadInstanceList}" status="i" var="subAccountHeadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subAccountHeadInstance.id}">${fieldValue(bean: subAccountHeadInstance, field: "accountHead")}</g:link></td>
					
						<td><g:formatBoolean boolean="${subAccountHeadInstance.isIntrest}" /></td>
					
						<td>${fieldValue(bean: subAccountHeadInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subAccountHeadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
