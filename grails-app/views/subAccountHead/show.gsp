
<%@ page import="accounting.SubAccountHead" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subAccountHead.label', default: 'SubAccountHead')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-subAccountHead" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-subAccountHead" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list subAccountHead">
			
				<g:if test="${subAccountHeadInstance?.accountHead}">
				<li class="fieldcontain">
					<span id="accountHead-label" class="property-label"><g:message code="subAccountHead.accountHead.label" default="Account Head" /></span>
					
						<span class="property-value" aria-labelledby="accountHead-label"><g:link controller="accountHead" action="show" id="${subAccountHeadInstance?.accountHead?.id}">${subAccountHeadInstance?.accountHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${subAccountHeadInstance?.isIntrest}">
				<li class="fieldcontain">
					<span id="isIntrest-label" class="property-label"><g:message code="subAccountHead.isIntrest.label" default="Is Intrest" /></span>
					
						<span class="property-value" aria-labelledby="isIntrest-label"><g:formatBoolean boolean="${subAccountHeadInstance?.isIntrest}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${subAccountHeadInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="subAccountHead.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${subAccountHeadInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:subAccountHeadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${subAccountHeadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
