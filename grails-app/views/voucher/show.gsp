
<%@ page import="accounting.Voucher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'voucher.label', default: 'Voucher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-voucher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-voucher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list voucher">
			
				<g:if test="${voucherInstance?.voucherNo}">
				<li class="fieldcontain">
					<span id="voucherNo-label" class="property-label"><g:message code="voucher.voucherNo.label" default="Voucher No" /></span>
					
						<span class="property-value" aria-labelledby="voucherNo-label"><g:fieldValue bean="${voucherInstance}" field="voucherNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="voucher.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${voucherInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.bank}">
				<li class="fieldcontain">
					<span id="bank-label" class="property-label"><g:message code="voucher.bank.label" default="Bank" /></span>
					
						<span class="property-value" aria-labelledby="bank-label"><g:formatBoolean boolean="${voucherInstance?.bank}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.chequeNo}">
				<li class="fieldcontain">
					<span id="chequeNo-label" class="property-label"><g:message code="voucher.chequeNo.label" default="Cheque No" /></span>
					
						<span class="property-value" aria-labelledby="chequeNo-label"><g:fieldValue bean="${voucherInstance}" field="chequeNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.currency}">
				<li class="fieldcontain">
					<span id="currency-label" class="property-label"><g:message code="voucher.currency.label" default="Currency" /></span>
					
						<span class="property-value" aria-labelledby="currency-label"><g:fieldValue bean="${voucherInstance}" field="currency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="voucher.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${voucherInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="voucher.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${voucherInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.narration}">
				<li class="fieldcontain">
					<span id="narration-label" class="property-label"><g:message code="voucher.narration.label" default="Narration" /></span>
					
						<span class="property-value" aria-labelledby="narration-label"><g:fieldValue bean="${voucherInstance}" field="narration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.referenceId}">
				<li class="fieldcontain">
					<span id="referenceId-label" class="property-label"><g:message code="voucher.referenceId.label" default="Reference Id" /></span>
					
						<span class="property-value" aria-labelledby="referenceId-label"><g:fieldValue bean="${voucherInstance}" field="referenceId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voucherInstance?.subCategory}">
				<li class="fieldcontain">
					<span id="subCategory-label" class="property-label"><g:message code="voucher.subCategory.label" default="Sub Category" /></span>
					
						<span class="property-value" aria-labelledby="subCategory-label"><g:link controller="subCategory" action="show" id="${voucherInstance?.subCategory?.id}">${voucherInstance?.subCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:voucherInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${voucherInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
