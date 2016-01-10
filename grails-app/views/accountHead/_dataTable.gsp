<table class="table table-hover table-striped table_override">
    <thead>
    <tr class="thead_tr">
        <th>S.No.</th>
        <g:sortableColumn property="name" id="name-sort"
                          title="${message(code: 'accountHead.name.label', default: 'Name')}" style="text-align:center;"
                          onclick="sortData(event, url);"/>
        <th colspan="2" style="color: #ffffff;">Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${accountHeadInstanceList}" status="i" var="accountHeadInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
            <td>${++startPoint}</td>
            <td>${fieldValue(bean: accountHeadInstance, field: "name")}</td>
            <td>
                <g:form method="get" action="edit" resource="${accountHeadInstance}">
                    <button class="editDeleteBtn">
                        <i class="fa fa-edit" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                    </button>
                </g:form>
            </td>
            <td>
                <button class="editDeleteBtn"
                        onclick="showConfirmBox('Delete Account Head', 'Do you want to delete ${accountHeadInstance.name}?',
                                '${createLink(controller:"accountHead", action:"delete",id: accountHeadInstance.id)}',
                                '${createLink(controller:"accountHead", action:"getIndexData")}');">
                    <i class="fa fa-close" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                </button>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${accountHeadInstanceCount ?: 0}"/>
</div>
<script type="text/javascript">
    var url = $('#name-sort a').attr('href'); //used in g:sortable column
    var urlPaginate = $('ul.pagination li a.step').attr('href');
    $('ul.pagination li a.step, ul.pagination li.prev a').click(function (event) {
        sortData(event, urlPaginate);
    });
</script>