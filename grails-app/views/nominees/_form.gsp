<%@ page import="accounting.Nominees" %>



<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="nominees.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${nomineesInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="nominees.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${nomineesInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="nominees.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${nomineesInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="nominees.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${nomineesInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="nominees.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${nomineesInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="nominees.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${nomineesInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="nominees.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${nomineesInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="nominees.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${nomineesInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'mobile', 'error')} required">
	<label for="mobile">
		<g:message code="nominees.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobile" required="" value="${nomineesInstance?.mobile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nomineesInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="nominees.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${nomineesInstance?.phone}"/>

</div>

