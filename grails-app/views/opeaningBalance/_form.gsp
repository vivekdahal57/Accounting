<%@ page import="accounting.OpeaningBalance" %>



<div class="fieldcontain ${hasErrors(bean: opeaningBalanceInstance, field: 'accountHead', 'error')} required">
	<label for="accountHead">
		<g:message code="opeaningBalance.accountHead.label" default="Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="accountHead" name="accountHead.id" from="${accounting.AccountHead.list()}" optionKey="id" required="" value="${opeaningBalanceInstance?.accountHead?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opeaningBalanceInstance, field: 'debit', 'error')} ">
	<label for="debit">
		<g:message code="opeaningBalance.debit.label" default="Debit" />
		
	</label>
	<g:checkBox name="debit" value="${opeaningBalanceInstance?.debit}" />

</div>

<div class="fieldcontain ${hasErrors(bean: opeaningBalanceInstance, field: 'openingBalance', 'error')} required">
	<label for="openingBalance">
		<g:message code="opeaningBalance.openingBalance.label" default="Opening Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="openingBalance" value="${fieldValue(bean: opeaningBalanceInstance, field: 'openingBalance')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: opeaningBalanceInstance, field: 'subAccountHead', 'error')} required">
	<label for="subAccountHead">
		<g:message code="opeaningBalance.subAccountHead.label" default="Sub Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subAccountHead" name="subAccountHead.id" from="${accounting.SubAccountHead.list()}" optionKey="id" required="" value="${opeaningBalanceInstance?.subAccountHead?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opeaningBalanceInstance, field: 'subCategory', 'error')} required">
	<label for="subCategory">
		<g:message code="opeaningBalance.subCategory.label" default="Sub Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subCategory" name="subCategory.id" from="${accounting.SubCategory.list()}" optionKey="id" required="" value="${opeaningBalanceInstance?.subCategory?.id}" class="many-to-one"/>

</div>

