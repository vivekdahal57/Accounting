<%@ page import="accounting.SubAccountHead" %>



<div class="fieldcontain ${hasErrors(bean: subAccountHeadInstance, field: 'accountHead', 'error')} required">
	<label for="accountHead">
		<g:message code="subAccountHead.accountHead.label" default="Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="accountHead" name="accountHead.id" from="${accounting.AccountHead.list()}" optionKey="id" required="" value="${subAccountHeadInstance?.accountHead?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subAccountHeadInstance, field: 'isIntrest', 'error')} ">
	<label for="isIntrest">
		<g:message code="subAccountHead.isIntrest.label" default="Is Intrest" />
		
	</label>
	<g:checkBox name="isIntrest" value="${subAccountHeadInstance?.isIntrest}" />

</div>

<div class="fieldcontain ${hasErrors(bean: subAccountHeadInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subAccountHead.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subAccountHeadInstance?.name}"/>

</div>

