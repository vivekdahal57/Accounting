
<%@ page import="accounting.InterestRegulator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'intrestRegulator.label', default: 'InterestRegulator')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-intrestRegulator" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-intrestRegulator" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list intrestRegulator">
			
				<g:if test="${intrestRegulatorInstance?.intrestRate}">
				<li class="fieldcontain">
					<span id="intrestRate-label" class="property-label"><g:message code="intrestRegulator.intrestRate.label" default="Intrest Rate" /></span>
					
						<span class="property-value" aria-labelledby="intrestRate-label"><g:fieldValue bean="${intrestRegulatorInstance}" field="intrestRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${intrestRegulatorInstance?.intrestType}">
				<li class="fieldcontain">
					<span id="intrestType-label" class="property-label"><g:message code="intrestRegulator.intrestType.label" default="Intrest Type" /></span>
					
						<span class="property-value" aria-labelledby="intrestType-label"><g:fieldValue bean="${intrestRegulatorInstance}" field="intrestType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${intrestRegulatorInstance?.maturityDays}">
				<li class="fieldcontain">
					<span id="maturityDays-label" class="property-label"><g:message code="intrestRegulator.maturityDays.label" default="Maturity Days" /></span>
					
						<span class="property-value" aria-labelledby="maturityDays-label"><g:fieldValue bean="${intrestRegulatorInstance}" field="maturityDays"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${intrestRegulatorInstance?.subAccountHead}">
				<li class="fieldcontain">
					<span id="subAccountHead-label" class="property-label"><g:message code="intrestRegulator.subAccountHead.label" default="Sub Account Head" /></span>
					
						<span class="property-value" aria-labelledby="subAccountHead-label"><g:link controller="subAccountHead" action="show" id="${intrestRegulatorInstance?.subAccountHead?.id}">${intrestRegulatorInstance?.subAccountHead?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${intrestRegulatorInstance?.taxDeduction}">
				<li class="fieldcontain">
					<span id="taxDeduction-label" class="property-label"><g:message code="intrestRegulator.taxDeduction.label" default="Tax Deduction" /></span>
					
						<span class="property-value" aria-labelledby="taxDeduction-label"><g:fieldValue bean="${intrestRegulatorInstance}" field="taxDeduction"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:intrestRegulatorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${intrestRegulatorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
