<%@ page import="accounting.OpeningBalance" %>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'subCategory', 'error')} required fieldRequired">
    <label for="subCategory">
        <g:message code="openingBalance.subCategory.label" default="Sub Category:"/>
    </label>
    <g:select id="subCategory" name="subCategory.id" from="${newList}" optionKey="id" required="" value="${openingBalanceInstance?.subCategory?.id}"
              class="many-to-one form-control form_control_override"
              optionValue="name" noSelection="${['null': 'Select One...']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'openingBalance', 'error')} required fieldRequired">
    <label for="openingBalance">
        <g:message code="openingBalance.openingBalance.label" default="Opening Balance:"/>
    </label>
    <g:field name="openingBalance" value="${fieldValue(bean: openingBalanceInstance, field: 'openingBalance')}"
             type="" class="form-control form_control_override"/>
</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'debit', 'error')} ">
    <label for="debit">
        <g:message code="openingBalance.debit.label" default="Debit: "/>
    </label>
    <g:checkBox name="debit" value="${openingBalanceInstance?.debit}"/>
</div>
