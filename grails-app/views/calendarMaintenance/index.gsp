<%@ page import="accounting.CalendarMaintenance" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'calendarMaintenance.label', default: 'Calendar')}"/>
    <title>NanceCount : <g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="dashIconWrap">
    <div class="heading" style="margin-bottom: 5px;">
        <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | <g:message code="default.list.label"
                                                                                  args="[entityName]"/>
        <div class="createUser"><i class="fa fa-user-plus"></i> <g:link class="create" action="create"><g:message
                code="default.new.label" args="[entityName]"/></g:link></div>
    </div>

    <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; ">
        <table class="table table-hover table_override">
            <thead>
            <tr class="thead_tr">

                <g:sortableColumn property="customYear"
                                  title="${message(code: 'calendarMaintenance.customYear.label', default: 'CustomYear')}"/>
                <g:sortableColumn property="startDateInAD"
                                  title="${message(code: 'calendarMaintenance.startDateInAD.label', default: 'Start Date(AD)')}"/>
                <g:sortableColumn property="month1"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month1')}"/>

                <g:sortableColumn property="month2"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month2')}"/>

                <g:sortableColumn property="month3"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month3')}"/>

                <g:sortableColumn property="month4"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month4')}"/>

                <g:sortableColumn property="month5"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month5')}"/>

                <g:sortableColumn property="month6"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month6')}"/>

                <g:sortableColumn property="month7"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month7')}"/>

                <g:sortableColumn property="month8"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month8')}"/>

                <g:sortableColumn property="month9"
                                  title="${message(code: 'calendarMaintenance.month1.label', default: 'Month9')}"/>

                <g:sortableColumn property="month10"
                                  title="${message(code: 'calendarMaintenance.month10.label', default: 'Month10')}"/>

                <g:sortableColumn property="month11"
                                  title="${message(code: 'calendarMaintenance.month11.label', default: 'Month11')}"/>

                <g:sortableColumn property="month12"
                                  title="${message(code: 'calendarMaintenance.month12.label', default: 'Month12')}"/>
                <g:sortableColumn property="endDateInAD"
                                  title="${message(code: 'calendarMaintenance.endDateInAD.label', default: 'End Date(AD)')}"/>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${calendarMaintenanceInstanceList}" status="i" var="calendarMaintenanceInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">

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
                        <g:form url="[resource: calendarMaintenanceInstance, action: 'delete']" method="DELETE">
                            <button class="editDeleteBtn" type="submit"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                                <i class="fa fa-times" style="font-size: 18px;" title="Delete" alt="Delete"></i>
                            </button>
                        </g:form>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<div class="pagination">
    <g:paginate total="${calendarMaintenanceInstance ?: 0}"/>
</div>
</body>
</html>
