<%@ page import="accounting.CalendarMaintenance" %>



<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'customYear', 'error')} required">
    <label for="customYear">
        <g:message code="calendarMaintenance.customYear.label" default="Custom Year" />
        <span class="required-indicator">:</span>
    </label>
    <g:textField name="customYear" required="" value="${calendarMaintenanceInstance?.customYear}" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'endDateInAD', 'error')} required">
    <label for="endDateInAD">
        <g:message code="calendarMaintenance.endDateInAD.label" default="End Date In AD" />
        <span class="required-indicator">:</span>
    </label>
    <g:datePicker name="endDateInAD" precision="day"  value="${calendarMaintenanceInstance?.endDateInAD}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month1', 'error')} required">
    <label for="month1">
        <g:message code="calendarMaintenance.month1.label" default="Month1" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month1" type="number" value="${calendarMaintenanceInstance.month1}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month2', 'error')} required">
    <label for="month2">
        <g:message code="calendarMaintenance.month2.label" default="Month2" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month2" type="number" value="${calendarMaintenanceInstance.month2}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month3', 'error')} required">
    <label for="month3">
        <g:message code="calendarMaintenance.month3.label" default="Month3" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month3" type="number" value="${calendarMaintenanceInstance.month3}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month4', 'error')} required">
    <label for="month4">
        <g:message code="calendarMaintenance.month4.label" default="Month4" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month4" type="number" value="${calendarMaintenanceInstance.month4}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month5', 'error')} required">
    <label for="month5">
        <g:message code="calendarMaintenance.month5.label" default="Month5" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month5" type="number" value="${calendarMaintenanceInstance.month5}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month6', 'error')} required">
    <label for="month6">
        <g:message code="calendarMaintenance.month6.label" default="Month6" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month6" type="number" value="${calendarMaintenanceInstance.month6}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month7', 'error')} required">
    <label for="month7">
        <g:message code="calendarMaintenance.month7.label" default="Month7" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month7" type="number" value="${calendarMaintenanceInstance.month7}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month8', 'error')} required">
    <label for="month8">
        <g:message code="calendarMaintenance.month8.label" default="Month8" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month8" type="number" value="${calendarMaintenanceInstance.month8}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month9', 'error')} required">
    <label for="month9">
        <g:message code="calendarMaintenance.month9.label" default="Month9" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month9" type="number" value="${calendarMaintenanceInstance.month9}" required="" class="form-control form_control_override"/>

</div>


<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month10', 'error')} required">
    <label for="month10">
        <g:message code="calendarMaintenance.month10.label" default="Month10" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month10" type="number" value="${calendarMaintenanceInstance.month10}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month11', 'error')} required">
    <label for="month11">
        <g:message code="calendarMaintenance.month11.label" default="Month11" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month11" type="number" value="${calendarMaintenanceInstance.month11}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'month12', 'error')} required">
    <label for="month12">
        <g:message code="calendarMaintenance.month12.label" default="Month12" />
        <span class="required-indicator">:</span>
    </label>
    <g:field name="month12" type="number" value="${calendarMaintenanceInstance.month12}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: calendarMaintenanceInstance, field: 'startDateInAD', 'error')} required">
    <label for="startDateInAD">
        <g:message code="calendarMaintenance.startDateInAD.label" default="Start Date In AD" />
        <span class="required-indicator">:</span>
    </label>
    <g:datePicker name="startDateInAD" precision="day"  value="${calendarMaintenanceInstance?.startDateInAD}" />

</div>

