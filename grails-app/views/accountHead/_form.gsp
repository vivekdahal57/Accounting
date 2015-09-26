<%@ page import="accounting.AccountHead" %>
<div class="fieldcontain ${hasErrors(bean: accountHeadInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="accountHead.name.label" default="Name" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="name" required="" value="${accountHeadInstance?.name}" class="form-control form_control_override"/>
</div>

