<table class="table table-hover table-striped table_override">
    <thead>
    <tr class="thead_tr">
        <th>S.No.</th>
        <g:sortableColumn property="startDate" id="startDate"
                          title="${message(code: 'accountingPeriod.startDate.label', default: 'Start Date')}"
                          style="text-align:center;"
                          onclick="sortData(event, url, 'startDate');"/>
        <g:sortableColumn property="endDate" id="endDate"
                          title="${message(code: 'accountingPeriod.endDate.label', default: 'End Date')}"
                          style="text-align:center;"
                          onclick="sortData(event, url,'endDate');"/>
        <g:sortableColumn property="isDefault" id="isDefault"
                          title="${message(code: 'accountingPeriod.isDefault.label', default: 'Is Default')}"
                          style="text-align:center;"
                          onclick="sortData(event, url,'isDefault');"/>
        <th colspan="2" style="color: #ffffff;">Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${accountingPeriodInstanceList}" status="i" var="accountingPeriodInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
            <td>${++startPoint}</td>
            <td>${accountingPeriodInstance.startDate.format('yyyy/MM/dd')}</td>
            <td>${accountingPeriodInstance.endDate.format('yyyy/MM/dd')}</td>
            <td><g:formatBoolean boolean="${accountingPeriodInstance.isDefault}"/></td>

            <td>
                <g:form method="get" action="edit" resource="${accountingPeriodInstance}">
                    <button class="editDeleteBtn">
                        <i class="fa fa-edit" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                    </button>
                </g:form>
            </td>
            <td>
                <g:if test="${accountingPeriodInstance.isDefault != true}">
                    <button class="editDeleteBtn"
                            onclick="showConfirmBox('Delete Accounting Period', 'Do you want to delete ${accountingPeriodInstance.startDate}?',
                                    '${createLink(controller:"accountingPeriod", action:"delete",id: accountingPeriodInstance.id)}',
                                    '${createLink(controller:"accountingPeriod", action:"getIndexData")}');">
                        <i class="fa fa-close" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                    </button>
                </g:if>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${accountingPeriodInstanceCount ?: 0}"/>
</div>

<script type="text/javascript">
    var url = $('th.sortable a').attr('href'); //used in g:sortable column
    var urlPaginate = $('ul.pagination li a.step').attr('href');
    $('ul.pagination li a.step, ul.pagination li.prev a').click(function (event) {
        sortData(event, urlPaginate, 0);
    });
</script>