<%@ page import="authorization.User" %>
<%@ page import="authorization.UserRole" %>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
    <label for="firstName">
        <g:message code="user.firstName.label" default="First Name" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="firstName" required="" value="${userInstance?.firstName}" class="form-control form_control_override" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
    <label for="lastName">
        <g:message code="user.lastName.label" default="Last Name" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="lastName" required="" value="${userInstance?.lastName}" class="form-control form_control_override" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="user.email.label" default="Email" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="email" required="" value="${userInstance?.email}" class="form-control form_control_override" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} required">
    <label for="phone">
        <g:message code="user.phone.label" default="Phone" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="phone" required="" value="${userInstance?.phone}" class="form-control form_control_override" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
    <label for="username">
        <g:message code="user.username.label" default="Username" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="username" required="" value="${userInstance?.username}" class="form-control form_control_override" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="user.password.label" default="Password" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="password" required="" value="${userInstance?.password}" class="form-control form_control_override" />
</div>
<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'role', 'error')} required">
    <label for="role">
        <g:message code="userRole.role.label" default="Role" />
        <span class="required-indicator">:</span>
    </label>
    <g:select id="role" name="role.id" from="${authorization.Role.list()}" optionKey="id" required="" value="${userRoleInstance?.role?.id}" class="many-to-one" class="form-control form_control_override"/>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
    <label for="accountExpired">
        <g:message code="user.accountExpired.label" default="Account Expired" />
    </label>
    <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
    <label for="accountLocked">
        <g:message code="user.accountLocked.label" default="Account Locked" />
    </label>
    <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
    <label for="enabled">
        <g:message code="user.enabled.label" default="Enabled" />
    </label>
    <g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
    <label for="passwordExpired">
        <g:message code="user.passwordExpired.label" default="Password Expired" />
    </label>
    <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>