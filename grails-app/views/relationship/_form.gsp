<%@ page import="accounting.Relationship" %>



<div class="fieldcontain ${hasErrors(bean: relationshipInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="relationship.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${relationshipInstance?.name}"/>

</div>

