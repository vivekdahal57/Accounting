<%@ page import="accounting.Nominees" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'nominees.label', default: 'Nominees')}"/>
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
                <g:sortableColumn property="firstName"
                                  title="${message(code: 'nominees.firstName.label', default: 'First Name')}"/>
                <g:sortableColumn property="middleName"
                                  title="${message(code: 'nominees.middleName.label', default: 'Middle Name')}"/>
                <g:sortableColumn property="lastName"
                                  title="${message(code: 'nominees.lastName.label', default: 'Last Name')}"/>
                <g:sortableColumn property="email" title="${message(code: 'nominees.email.label', default: 'Email')}"/>
                <g:sortableColumn property="dob" title="${message(code: 'nominees.dob.label', default: 'Dob')}"/>
                <g:sortableColumn property="Phone" title="${message(code: 'nominees.phone.label', default: 'Phone')}"/>
                <g:sortableColumn property="mobile" title="${message(code: 'nominees.mobile.label', default: 'Mobile')}"/>
                <g:sortableColumn property="address"
                                  title="${message(code: 'nominees.address.label', default: 'Address')}"/>
                <g:sortableColumn property="city" title="${message(code: 'nominees.city.label', default: 'City')}"/>
                <g:sortableColumn property="country"
                                  title="${message(code: 'nominees.country.label', default: 'Country')}"/>
                <th style="color: #ffffff">${message(code: 'nominees.members.label', default: 'Relates To')}</th>
                <th style="color: #ffffff">${message(code: 'nominees.relationship.label', default: 'Relationship')}</th>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${nomineesInstanceList}" status="i" var="nomineesInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                    <td>${fieldValue(bean: nomineesInstance, field: "firstName")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "middleName")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "lastName")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "email")}</td>
                    <td>${nomineesInstance.dob.format('yyyy/MM/dd')}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "phone")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "mobile")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "address")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "city")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "country")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "members.firstName")} ${fieldValue(bean: nomineesInstance, field: "members.middleName")} ${fieldValue(bean: nomineesInstance, field: "members.lastName")}</td>
                    <td>${fieldValue(bean: nomineesInstance, field: "relationship.name")}</td>
                    <td>
                        <g:form method="get" action="edit" resource="${nomineesInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:form url="[resource: nomineesInstance, action: 'delete']" method="DELETE">
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
    <g:paginate total="${nomineesInstance ?: 0}"/>
</div>
</body>
</html>
