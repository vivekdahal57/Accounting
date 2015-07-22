<%@ page import="accounting.Members" %>



<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="members.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${membersInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="members.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${membersInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="members.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${membersInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="members.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${membersInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="members.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${membersInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="members.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${membersInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="members.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${membersInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'memberJoinDate', 'error')} required">
	<label for="memberJoinDate">
		<g:message code="members.memberJoinDate.label" default="Member Join Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="memberJoinDate" precision="day"  value="${membersInstance?.memberJoinDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="members.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${membersInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'mobile', 'error')} required">
	<label for="mobile">
		<g:message code="members.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobile" required="" value="${membersInstance?.mobile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membersInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="members.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${membersInstance?.phone}"/>

</div>



