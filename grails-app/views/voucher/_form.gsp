<%@ page import="accounting.Voucher" %>



<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'voucherNo', 'error')} required">
	<label for="voucherNo">
		<g:message code="voucher.voucherNo.label" default="Voucher No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="voucherNo" type="number" value="${voucherInstance.voucherNo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="voucher.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: voucherInstance, field: 'amount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'bank', 'error')} ">
	<label for="bank">
		<g:message code="voucher.bank.label" default="Bank" />
		
	</label>
	<g:checkBox name="bank" value="${voucherInstance?.bank}" />

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'chequeNo', 'error')} required">
	<label for="chequeNo">
		<g:message code="voucher.chequeNo.label" default="Cheque No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="chequeNo" type="number" value="${voucherInstance.chequeNo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'currency', 'error')} required">
	<label for="currency">
		<g:message code="voucher.currency.label" default="Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="currency" required="" value="${voucherInstance?.currency}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="voucher.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${voucherInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="voucher.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${voucherInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'narration', 'error')} required">
	<label for="narration">
		<g:message code="voucher.narration.label" default="Narration" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="narration" required="" value="${voucherInstance?.narration}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'referenceId', 'error')} required">
	<label for="referenceId">
		<g:message code="voucher.referenceId.label" default="Reference Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="referenceId" type="number" value="${voucherInstance.referenceId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: voucherInstance, field: 'subCategory', 'error')} required">
	<label for="subCategory">
		<g:message code="voucher.subCategory.label" default="Sub Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subCategory" name="subCategory.id" from="${accounting.SubCategory.list()}" optionKey="id" required="" optionValue="name" value="${voucherInstance?.subCategory?.id}" class="many-to-one"/>

</div>

