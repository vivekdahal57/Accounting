
<%@ page import="accounting.OpeningBalance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'openingBalance.label', default: 'OpeningBalance')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-openingBalance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-openingBalance" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list openingBalance">
			
				<g:if test="${openingBalanceInstance?.accountHead}">
				<li class="fieldcontain">
					<span id="accountHead-label" class="property-label"><g:message code="openingBalance.accountHead.label" default="Account Head" /></span>
					
						<span class="property-value" aria-labelledby="accountHead-label"><g:link controller="accountHead" action="show" id="${openingBalanceInstance?.accountHead?.id}">${openingBalanceInstance?.accountHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingBalanceInstance?.debit}">
				<li class="fieldcontain">
					<span id="debit-label" class="property-label"><g:message code="openingBalance.debit.label" default="Debit" /></span>
					
						<span class="property-value" aria-labelledby="debit-label"><g:formatBoolean boolean="${openingBalanceInstance?.debit}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingBalanceInstance?.openingBalance}">
				<li class="fieldcontain">
					<span id="openingBalance-label" class="property-label"><g:message code="openingBalance.openingBalance.label" default="Opening Balance" /></span>
					
						<span class="property-value" aria-labelledby="openingBalance-label"><g:fieldValue bean="${openingBalanceInstance}" field="openingBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingBalanceInstance?.subAccountHead}">
				<li class="fieldcontain">
					<span id="subAccountHead-label" class="property-label"><g:message code="openingBalance.subAccountHead.label" default="Sub Account Head" /></span>
					
						<span class="property-value" aria-labelledby="subAccountHead-label"><g:link controller="subAccountHead" action="show" id="${openingBalanceInstance?.subAccountHead?.id}">${openingBalanceInstance?.subAccountHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingBalanceInstance?.subCategory}">
				<li class="fieldcontain">
					<span id="subCategory-label" class="property-label"><g:message code="openingBalance.subCategory.label" default="Sub Category" /></span>
					
						<span class="property-value" aria-labelledby="subCategory-label"><g:link controller="subCategory" action="show" id="${openingBalanceInstance?.subCategory?.id}">${openingBalanceInstance?.subCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:openingBalanceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${openingBalanceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
