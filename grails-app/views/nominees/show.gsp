
<%@ page import="accounting.Nominees" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nominees.label', default: 'Nominees')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-nominees" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-nominees" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nominees">
			
				<g:if test="${nomineesInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="nominees.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${nomineesInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="nominees.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${nomineesInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="nominees.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${nomineesInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="nominees.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${nomineesInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="nominees.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${nomineesInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="nominees.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${nomineesInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="nominees.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${nomineesInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="nominees.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${nomineesInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="nominees.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${nomineesInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nomineesInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="nominees.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${nomineesInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:nomineesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${nomineesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
