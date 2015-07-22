<%@ page import="accounting.IntrestRegulator" %>



<div class="fieldcontain ${hasErrors(bean: intrestRegulatorInstance, field: 'intrestRate', 'error')} required">
	<label for="intrestRate">
		<g:message code="intrestRegulator.intrestRate.label" default="Intrest Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="intrestRate" value="${fieldValue(bean: intrestRegulatorInstance, field: 'intrestRate')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: intrestRegulatorInstance, field: 'intrestType', 'error')} required">
	<label for="intrestType">
		<g:message code="intrestRegulator.intrestType.label" default="Intrest Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="intrestType" required="" value="${intrestRegulatorInstance?.intrestType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: intrestRegulatorInstance, field: 'maturityDays', 'error')} required">
	<label for="maturityDays">
		<g:message code="intrestRegulator.maturityDays.label" default="Maturity Days" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maturityDays" type="number" value="${intrestRegulatorInstance.maturityDays}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: intrestRegulatorInstance, field: 'subAccountHead', 'error')} required">
	<label for="subAccountHead">
		<g:message code="intrestRegulator.subAccountHead.label" default="Sub Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subAccountHead" name="subAccountHead.id" from="${accounting.SubAccountHead.list()}" optionKey="id" required="" value="${intrestRegulatorInstance?.subAccountHead?.id}" class="many-to-one" optionValue="name"/>

</div>

<div class="fieldcontain ${hasErrors(bean: intrestRegulatorInstance, field: 'taxDeduction', 'error')} required">
	<label for="taxDeduction">
		<g:message code="intrestRegulator.taxDeduction.label" default="Tax Deduction" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="taxDeduction" value="${fieldValue(bean: intrestRegulatorInstance, field: 'taxDeduction')}" required=""/>

</div>

