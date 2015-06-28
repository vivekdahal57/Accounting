
<%@ page import="accounting.AccountingPeriod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountingPeriod.label', default: 'AccountingPeriod')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-accountingPeriod" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-accountingPeriod" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list accountingPeriod">
			
				<g:if test="${accountingPeriodInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="accountingPeriod.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${accountingPeriodInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountingPeriodInstance?.isDefault}">
				<li class="fieldcontain">
					<span id="isDefault-label" class="property-label"><g:message code="accountingPeriod.isDefault.label" default="Is Default" /></span>
					
						<span class="property-value" aria-labelledby="isDefault-label"><g:formatBoolean boolean="${accountingPeriodInstance?.isDefault}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountingPeriodInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="accountingPeriod.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${accountingPeriodInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accountingPeriodInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accountingPeriodInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
