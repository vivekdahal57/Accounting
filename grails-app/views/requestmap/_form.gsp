<%@ page import="authorization.Requestmap" %>



<div class="fieldcontain ${hasErrors(bean: requestmapInstance, field: 'configAttribute', 'error')} required">
    <label for="configAttribute">
        <g:message code="requestmap.configAttribute.label" default="Config Attribute" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="configAttribute" required="" value="${requestmapInstance?.configAttribute}" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requestmapInstance, field: 'url', 'error')} required">
    <label for="url">
        <g:message code="requestmap.url.label" default="Url" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="url" required="" value="${requestmapInstance?.url}" class="form-control form_control_override"/>

</div>

