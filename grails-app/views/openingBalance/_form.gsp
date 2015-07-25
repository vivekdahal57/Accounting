<%@ page import="accounting.OpeningBalance" %>
<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'accountHead', 'error')} required fieldRequired">
    <label for="accountHead">
        <g:message code="openingBalance.accountHead.label" default="Account Head:"/>
    </label>
    <g:select id="accountHead" name="accountHead.id" from="${accounting.AccountHead.list()}" optionKey="id"
              value="${openingBalanceInstance?.accountHead?.id}" class="many-to-one form-control form_control_override"
              optionValue="name"
              noSelection="${['null': 'Select One...']}" onchange="accountHeadChange()"/>
</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'openingBalance', 'error')} required fieldRequired">
    <label for="openingBalance">
        <g:message code="openingBalance.openingBalance.label" default="Opening Balance:"/>
    </label>
    <g:field name="openingBalance" value="${fieldValue(bean: openingBalanceInstance, field: 'openingBalance')}"
             type="" class="form-control form_control_override"/>
</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'subAccountHead', 'error')} required fieldRequired">
    <label for="subAccountHead">
        <g:message code="openingBalance.subAccountHead.label" default="Sub Account Head:"/>
    </label>
    <g:select id="subAccountHead" name="subAccountHead.id" from="" optionKey="id" value=""
              class="many-to-one form-control form_control_override"
              optionValue="name" noSelection="${['null': 'Select One...']}" onchange="subHeadChange();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'subCategory', 'error')} required fieldRequired">
    <label for="subCategory">
        <g:message code="openingBalance.subCategory.label" default="Sub Category:"/>
    </label>
    <g:select id="subCategory" name="subCategory.id" from="" optionKey="id" required="" value=""
              class="many-to-one form-control form_control_override"
              optionValue="name" noSelection="${['null': 'Select One...']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: openingBalanceInstance, field: 'debit', 'error')} ">
    <label for="debit">
        <g:message code="openingBalance.debit.label" default="Debit: "/>
    </label>
    <g:checkBox name="debit" value="${openingBalanceInstance?.debit}"/>
</div>

<script type="text/javascript">
    function accountHeadChange() {
        if ($("#accountHead").val() == 'null') {
            $("#subAccountHead").html('<option>Select One...</option>');
            $("#subCategory").html('<option>Select One...</option>');
        } else {
            $.ajax({
                url: '${createLink(contorller:"openingBalance",action:"ajaxSubAccountHeadList")}/' + $("#accountHead").val(),
                type: 'post',
                cache: false,
                success: function (response) {
                    var dataType = typeof response;
                    if (dataType == 'object') {
                        showGrowl('Account head is empty');
                        $("#subAccountHead").html('<option>Select One...</option>');
                    } else {
                        $("#subAccountHead").html(response);
                    }
                },
                failure: function (response) {
                    console.log('Ajax request failed at accountHeadChange');
                }
            });
        }

    }

    function subHeadChange() {
        if ($("#subAccountHead").val() == 'null') {
            $("#subCategory").html('<option>Select One...</option>');
        } else {
            $.ajax({
                url: '${createLink(contorller:"openingBalance",action:"ajaxSubCategoryList")}/' + $("#subAccountHead").val(),
                type: 'post',
                cache: false,
                success: function (response) {
                    var dataType = typeof response;
                    if (dataType == 'object') {
                        showGrowl('Sub account head is empty');
                        $("#subCategory").html('<option>Select One...</option>');
                    } else {
                        $("#subCategory").html(response);
                    }
                },
                failure: function (response) {
                    console.log('Ajax request failed at accountHeadChange');
                }
            });
        }
    }
</script>

