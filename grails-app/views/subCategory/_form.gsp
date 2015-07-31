<%@ page import="accounting.SubCategory" %>



<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'isIntrest', 'error')} ">
	<label for="isIntrest">
		<g:message code="subCategory.isIntrest.label" default="Is Intrest" />
		
	</label>
	<g:checkBox name="isIntrest" value="${subCategoryInstance?.isIntrest}" />

</div>

<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subCategoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'subAccountHead', 'error')} required">
	<label for="subAccountHead">
		<g:message code="subCategory.subAccountHead.label" default="Sub Account Head" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subAccountHead" name="subAccountHead.id" from="${accounting.SubAccountHead.list()}" optionKey="id" optionValue="name" required="" value="${subCategoryInstance?.subAccountHead?.id}" class="many-to-one"/>

</div>

