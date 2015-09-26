<%@ page import="accounting.AccountingPeriod" %>
<div class="fieldcontain ${hasErrors(bean: accountingPeriodInstance, field: 'endDate', 'error')} required">
    <label for="endDate">
        <g:message code="accountingPeriod.endDate.label" default="End Date" />
        <span class="required-indicator">:</span>
    </label>
    <g:datePicker name="endDate" precision="day" value="${accountingPeriodInstance?.endDate}" class="form-control form_control_override"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountingPeriodInstance, field: 'startDate', 'error')} required">
    <label for="startDate">
        <g:message code="accountingPeriod.startDate.label" default="Start Date" />
        <span class="required-indicator">:</span>
    </label>
    <g:datePicker name="startDate" precision="day"  value="${accountingPeriodInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: accountingPeriodInstance, field: 'isDefault', 'error')} ">
    <label for="isDefault">
        <g:message code="accountingPeriod.isDefault.label" default="Is Default" />
    </label>
    <g:checkBox name="isDefault" value="${accountingPeriodInstance?.isDefault}" />
</div>

