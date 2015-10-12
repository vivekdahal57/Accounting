<%@ page import="accounting.Members" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'members.label', default: 'Member')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>

    <body>

        <div class="dashIconWrap">
            <div class="heading" style="margin-bottom: 5px;">
                <a class="home" href="${createLink(uri: '/')}">Dashboard</a> | <g:message code="default.list.label"
                    args="[entityName]"/>
                <div class="createUser"><i class="fa fa-user-plus"></i> <g:link class="create" action="create"><g:message
                            code="default.new.label" args="[entityName]"/></g:link></div>
                </div>

            <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; overflow-x: auto;">
                <table class="table table-hover table_override">
                    <thead>
                        <tr class="thead_tr">
                            <g:sortableColumn property="firstName"
                            title="${message(code: 'members.firstName.label', default: 'Full Name')}"/>
                            <g:sortableColumn property="email" title="${message(code: 'members.email.label', default: 'Email')}"/>
                            <g:sortableColumn property="dob" title="${message(code: 'members.dob.label', default: 'Dob')}"/>
                            <g:sortableColumn property="phone" title="${message(code: 'members.phone.label', default: 'Phone')}"/>
                            <g:sortableColumn property="mobile"
                            title="${message(code: 'members.mobile.label', default: 'Mobile')}"/>
                            <g:sortableColumn property="address"
                            title="${message(code: 'members.address.label', default: 'Address')}"/>
                            <g:sortableColumn property="city" title="${message(code: 'members.city.label', default: 'City')}"/>
                            <g:sortableColumn property="country"
                            title="${message(code: 'members.country.label', default: 'Country')}"/>
                            <g:sortableColumn property="memberJoinDate"
                            title="${message(code: 'members.memberJoinDate.label', default: 'Member Join Date')}"/>
                            <th colspan="2" style="color: #ffffff;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${membersInstanceList}" status="i" var="membersInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                                <td>${fieldValue(bean: membersInstance, field: "firstName")} ${fieldValue(bean: membersInstance, field: "middleName")} ${fieldValue(bean: membersInstance, field: "lastName")}</td>
                                <td>${fieldValue(bean: membersInstance, field: "email")}</td>
                                <td>${membersInstance.dob.format('yyyy/MM/dd')}</td>
                                <td>${fieldValue(bean: membersInstance, field: "phone")}</td>
                                <td>${fieldValue(bean: membersInstance, field: "mobile")}</td>
                                <td>${fieldValue(bean: membersInstance, field: "address")}</td>
                                <td>${fieldValue(bean: membersInstance, field: "city")}</td>
                                <td>${fieldValue(bean: membersInstance, field: "country")}</td>
                                <td>${membersInstance.memberJoinDate.format('yyyy/MM/dd')}</td>
                                <td>
                                    <g:form method="get" action="edit" resource="${membersInstance}">
                                        <button class="editDeleteBtn">
                                            <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                                        </button>
                                    </g:form>
                                </td>
                                <td>
                                    <g:form url="[resource: membersInstance, action: 'delete']" method="DELETE">
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
            <g:paginate total="${membersInstanceCount ?: 0}"/>
        </div>
    </body>
</html>
