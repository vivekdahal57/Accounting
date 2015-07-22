
<%@ page import="accounting.Members" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'members.label', default: 'Members')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-members" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-members" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list members">
			
				<g:if test="${membersInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="members.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${membersInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="members.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${membersInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="members.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${membersInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="members.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${membersInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="members.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${membersInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="members.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${membersInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="members.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${membersInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.memberJoinDate}">
				<li class="fieldcontain">
					<span id="memberJoinDate-label" class="property-label"><g:message code="members.memberJoinDate.label" default="Member Join Date" /></span>
					
						<span class="property-value" aria-labelledby="memberJoinDate-label"><g:formatDate date="${membersInstance?.memberJoinDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="members.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${membersInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membersInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="members.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${membersInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			

				<g:if test="${membersInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="members.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${membersInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			

			</ol>
			<g:form url="[resource:membersInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${membersInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
