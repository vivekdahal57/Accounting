
<%@ page import="accounting.CalendarMaintenance" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'calendarMaintenance.label', default: 'CalendarMaintenance')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-calendarMaintenance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="show-calendarMaintenance" class="content scaffold-show" role="main">
                <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list calendarMaintenance">

                <g:if test="${calendarMaintenanceInstance?.customYear}">
                    <li class="fieldcontain">
                        <span id="customYear-label" class="property-label"><g:message code="calendarMaintenance.customYear.label" default="Custom Year" /></span>

                        <span class="property-value" aria-labelledby="customYear-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="customYear"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.endDateInAD}">
                    <li class="fieldcontain">
                        <span id="endDateInAD-label" class="property-label"><g:message code="calendarMaintenance.endDateInAD.label" default="End Date In AD" /></span>

                        <span class="property-value" aria-labelledby="endDateInAD-label"><g:formatDate date="${calendarMaintenanceInstance?.endDateInAD}" /></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month1}">
                    <li class="fieldcontain">
                        <span id="month1-label" class="property-label"><g:message code="calendarMaintenance.month1.label" default="Month1" /></span>

                        <span class="property-value" aria-labelledby="month1-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month1"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month10}">
                    <li class="fieldcontain">
                        <span id="month10-label" class="property-label"><g:message code="calendarMaintenance.month10.label" default="Month10" /></span>

                        <span class="property-value" aria-labelledby="month10-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month10"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month11}">
                    <li class="fieldcontain">
                        <span id="month11-label" class="property-label"><g:message code="calendarMaintenance.month11.label" default="Month11" /></span>

                        <span class="property-value" aria-labelledby="month11-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month11"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month12}">
                    <li class="fieldcontain">
                        <span id="month12-label" class="property-label"><g:message code="calendarMaintenance.month12.label" default="Month12" /></span>

                        <span class="property-value" aria-labelledby="month12-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month12"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month2}">
                    <li class="fieldcontain">
                        <span id="month2-label" class="property-label"><g:message code="calendarMaintenance.month2.label" default="Month2" /></span>

                        <span class="property-value" aria-labelledby="month2-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month2"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month3}">
                    <li class="fieldcontain">
                        <span id="month3-label" class="property-label"><g:message code="calendarMaintenance.month3.label" default="Month3" /></span>

                        <span class="property-value" aria-labelledby="month3-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month3"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month4}">
                    <li class="fieldcontain">
                        <span id="month4-label" class="property-label"><g:message code="calendarMaintenance.month4.label" default="Month4" /></span>

                        <span class="property-value" aria-labelledby="month4-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month4"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month5}">
                    <li class="fieldcontain">
                        <span id="month5-label" class="property-label"><g:message code="calendarMaintenance.month5.label" default="Month5" /></span>

                        <span class="property-value" aria-labelledby="month5-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month5"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month6}">
                    <li class="fieldcontain">
                        <span id="month6-label" class="property-label"><g:message code="calendarMaintenance.month6.label" default="Month6" /></span>

                        <span class="property-value" aria-labelledby="month6-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month6"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month7}">
                    <li class="fieldcontain">
                        <span id="month7-label" class="property-label"><g:message code="calendarMaintenance.month7.label" default="Month7" /></span>

                        <span class="property-value" aria-labelledby="month7-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month7"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month8}">
                    <li class="fieldcontain">
                        <span id="month8-label" class="property-label"><g:message code="calendarMaintenance.month8.label" default="Month8" /></span>

                        <span class="property-value" aria-labelledby="month8-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month8"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.month9}">
                    <li class="fieldcontain">
                        <span id="month9-label" class="property-label"><g:message code="calendarMaintenance.month9.label" default="Month9" /></span>

                        <span class="property-value" aria-labelledby="month9-label"><g:fieldValue bean="${calendarMaintenanceInstance}" field="month9"/></span>

                    </li>
                </g:if>

                <g:if test="${calendarMaintenanceInstance?.startDateInAD}">
                    <li class="fieldcontain">
                        <span id="startDateInAD-label" class="property-label"><g:message code="calendarMaintenance.startDateInAD.label" default="Start Date In AD" /></span>

                        <span class="property-value" aria-labelledby="startDateInAD-label"><g:formatDate date="${calendarMaintenanceInstance?.startDateInAD}" /></span>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:calendarMaintenanceInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${calendarMaintenanceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
