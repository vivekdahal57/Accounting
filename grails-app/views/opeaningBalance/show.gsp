
<%@ page import="accounting.OpeaningBalance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opeaningBalance.label', default: 'OpeaningBalance')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opeaningBalance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opeaningBalance" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opeaningBalance">
			
				<g:if test="${opeaningBalanceInstance?.accountHead}">
				<li class="fieldcontain">
					<span id="accountHead-label" class="property-label"><g:message code="opeaningBalance.accountHead.label" default="Account Head" /></span>
					
						<span class="property-value" aria-labelledby="accountHead-label"><g:link controller="accountHead" action="show" id="${opeaningBalanceInstance?.accountHead?.id}">${opeaningBalanceInstance?.accountHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${opeaningBalanceInstance?.debit}">
				<li class="fieldcontain">
					<span id="debit-label" class="property-label"><g:message code="opeaningBalance.debit.label" default="Debit" /></span>
					
						<span class="property-value" aria-labelledby="debit-label"><g:formatBoolean boolean="${opeaningBalanceInstance?.debit}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opeaningBalanceInstance?.openingBalance}">
				<li class="fieldcontain">
					<span id="openingBalance-label" class="property-label"><g:message code="opeaningBalance.openingBalance.label" default="Opening Balance" /></span>
					
						<span class="property-value" aria-labelledby="openingBalance-label"><g:fieldValue bean="${opeaningBalanceInstance}" field="openingBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opeaningBalanceInstance?.subAccountHead}">
				<li class="fieldcontain">
					<span id="subAccountHead-label" class="property-label"><g:message code="opeaningBalance.subAccountHead.label" default="Sub Account Head" /></span>
					
						<span class="property-value" aria-labelledby="subAccountHead-label"><g:link controller="subAccountHead" action="show" id="${opeaningBalanceInstance?.subAccountHead?.id}">${opeaningBalanceInstance?.subAccountHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${opeaningBalanceInstance?.subCategory}">
				<li class="fieldcontain">
					<span id="subCategory-label" class="property-label"><g:message code="opeaningBalance.subCategory.label" default="Sub Category" /></span>
					
						<span class="property-value" aria-labelledby="subCategory-label"><g:link controller="subCategory" action="show" id="${opeaningBalanceInstance?.subCategory?.id}">${opeaningBalanceInstance?.subCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opeaningBalanceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opeaningBalanceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
