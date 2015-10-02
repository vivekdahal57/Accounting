<%@ page import="accounting.InterestRegulator" %>



<div class="fieldcontain ${hasErrors(bean: interestRegulatorInstance, field: 'interestRate', 'error')} required">
	<label for="interestRate">
		<g:message code="interestRegulator.interestRate.label" default="Interest Rate" />
		<span class="required-indicator">:</span>
	</label>
	<g:field name="interestRate" value="${fieldValue(bean: interestRegulatorInstance, field: 'interestRate')}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interestRegulatorInstance, field: 'interestType', 'error')} required">
	<label for="interestType">
		<g:message code="interestRegulator.interestType.label" default="Interest Type" />
		<span class="required-indicator">:</span>
	</label>
	<g:textField name="interestType" required="" value="${interestRegulatorInstance?.interestType}" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interestRegulatorInstance, field: 'maturityDays', 'error')} required">
	<label for="maturityDays">
		<g:message code="interestRegulator.maturityDays.label" default="Maturity Days" />
		<span class="required-indicator">:</span>
	</label>
	<g:field name="maturityDays" type="number" value="${interestRegulatorInstance.maturityDays}" required="" class="form-control form_control_override"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interestRegulatorInstance, field: 'subAccountHead', 'error')} required">
	<label for="subAccountHead">
		<g:message code="interestRegulator.subAccountHead.label" default="Sub Account Head" />
		<span class="required-indicator">:</span>
	</label>
	<g:select id="subAccountHead" name="subAccountHead.id" from="${accounting.SubAccountHead.list()}" optionKey="id" required="" value="${interestRegulatorInstance?.subAccountHead?.id}" class="many-to-one" optionValue="name"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interestRegulatorInstance, field: 'taxDeduction', 'error')} required">
	<label for="taxDeduction">
		<g:message code="interestRegulator.taxDeduction.label" default="Tax Deduction" />
		<span class="required-indicator">:</span>
	</label>
	<g:field name="taxDeduction" value="${fieldValue(bean: interestRegulatorInstance, field: 'taxDeduction')}" required="" class="form-control form_control_override"/>

</div>

