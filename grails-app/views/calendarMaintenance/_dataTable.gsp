<table class="table table-hover table_override">
    <thead>
    <tr class="thead_tr">
        <th>S.No.</th>
        <g:sortableColumn property="customYear" id="customYear"
                          title="${message(code: 'calendarMaintenance.customYear.label', default: 'CustomYear')}"
                          onclick="sortData(event, url, 'customYear');"/>
        <g:sortableColumn property="startDateInAD" id="startDateInAD"
                          title="${message(code: 'calendarMaintenance.startDateInAD.label', default: 'Start Date(AD)')}"
                          onclick="sortData(event, url, 'startDateInAD');"/>
        <g:sortableColumn property="month1" id="m1"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M1')}"
                          onclick="sortData(event, url, 'm1');"/>

        <g:sortableColumn property="month2" id="m2"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M2')}"
                          onclick="sortData(event, url, 'm2');"/>

        <g:sortableColumn property="month3" id="m3"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M3')}"
                          onclick="sortData(event, url, 'm3');"/>

        <g:sortableColumn property="month4" id="m4"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M4')}"
                          onclick="sortData(event, url, 'm4');"/>

        <g:sortableColumn property="month5" id="m5"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M5')}"
                          onclick="sortData(event, url, 'm5');"/>

        <g:sortableColumn property="month6" id="m6"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M6')}"
                          onclick="sortData(event, url, 'm6');"/>

        <g:sortableColumn property="month7" id="m7"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M7')}"
                          onclick="sortData(event, url, 'm7');"/>

        <g:sortableColumn property="month8" id="m8"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M8')}"
                          onclick="sortData(event, url, 'm8');"/>

        <g:sortableColumn property="month9" id="m9"
                          title="${message(code: 'calendarMaintenance.month1.label', default: 'M9')}"
                          onclick="sortData(event, url, 'm9');"/>

        <g:sortableColumn property="month10" id="m10"
                          title="${message(code: 'calendarMaintenance.month10.label', default: 'M10')}"
                          onclick="sortData(event, url, 'm10');"/>

        <g:sortableColumn property="month11" id="m11"
                          title="${message(code: 'calendarMaintenance.month11.label', default: 'M11')}"
                          onclick="sortData(event, url, 'm11');"/>

        <g:sortableColumn property="month12" id="m12"
                          title="${message(code: 'calendarMaintenance.month12.label', default: 'M12')}"
                          onclick="sortData(event, url, 'm12');"/>
        <g:sortableColumn property="endDateInAD" id="endDateInAD"
                          title="${message(code: 'calendarMaintenance.endDateInAD.label', default: 'End Date(AD)')}"
                          onclick="sortData(event, url, 'endDateInAD');"/>
        <th colspan="2" style="color: #ffffff;">Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${calendarMaintenanceInstanceList}" status="i" var="calendarMaintenanceInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
            <td>${++startPoint}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "customYear")}</td>
            <td>${calendarMaintenanceInstance.startDateInAD.format('yyyy/MM/dd')}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month1")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month2")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month3")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month4")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month5")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month6")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month7")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month8")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month9")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month10")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month11")}</td>
            <td>${fieldValue(bean: calendarMaintenanceInstance, field: "month12")}</td>
            <td>${calendarMaintenanceInstance.endDateInAD.format('yyyy/MM/dd')}</td>
            <td>
                <g:form method="get" action="edit" resource="${calendarMaintenanceInstance}">
                    <button class="editDeleteBtn">
                        <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                    </button>
                </g:form>
            </td>
            <td>
                <button class="editDeleteBtn" type="submit"
                        onclick="showConfirmBox('Delete Accounting Period', 'Do you want to delete ${calendarMaintenanceInstance.customYear}?',
                                '${createLink(controller:"calendarMaintenance", action:"delete",id: calendarMaintenanceInstance.id)}',
                                '${createLink(controller:"calendarMaintenance", action:"getIndexData")}');">
                    <i class="fa fa-times" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                </button>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${calendarMaintenanceInstanceCount ?: 0}"/>
</div>
<script type="text/javascript">
    var url = $('th.sortable a').attr('href'); //used in g:sortable column
    var urlPaginate = $('ul.pagination li a.step').attr('href');
    $('ul.pagination li a.step, ul.pagination li.prev a').click(function (event) {
        sortData(event, urlPaginate, 0);
    });
</script>