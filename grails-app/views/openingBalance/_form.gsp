<%@ page import="accounting.OpeningBalance" %>



<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'accountHead', 'error')} required">
	<label for="accountHead">
		<g:message code="openingBalance.accountHead.label" default="Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="accountHead" name="accountHead.id" from="${accounting.AccountHead.list()}" optionKey="id" required="" value="${openingBalanceInstance?.accountHead?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'debit', 'error')} ">
	<label for="debit">
		<g:message code="openingBalance.debit.label" default="Debit" />
		
	</label>
	<g:checkBox name="debit" value="${openingBalanceInstance?.debit}" />

</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'openingBalance', 'error')} required">
	<label for="openingBalance">
		<g:message code="openingBalance.openingBalance.label" default="Opening Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="openingBalance" value="${fieldValue(bean: openingBalanceInstance, field: 'openingBalance')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'subAccountHead', 'error')} required">
	<label for="subAccountHead">
		<g:message code="openingBalance.subAccountHead.label" default="Sub Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subAccountHead" name="subAccountHead.id" from="${accounting.SubAccountHead.list()}" optionKey="id" required="" value="${openingBalanceInstance?.subAccountHead?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'subCategory', 'error')} required">
	<label for="subCategory">
		<g:message code="openingBalance.subCategory.label" default="Sub Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subCategory" name="subCategory.id" from="${accounting.SubCategory.list()}" optionKey="id" required="" value="${openingBalanceInstance?.subCategory?.id}" class="many-to-one"/>

</div>

