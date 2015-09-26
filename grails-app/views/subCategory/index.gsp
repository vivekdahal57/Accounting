<%@ page import="accounting.SubCategory" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'subCategory.label', default: 'SubCategory')}"/>
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

    <div class="panel panel-default" style="margin-bottom: 0px;margin-right: 5px; ">
        <table class="table table-hover table_override">
            <thead>
            <tr class="thead_tr">
                <g:sortableColumn property="name" title="${message(code: 'subCategory.name.label', default: 'Name')}"/>
                <th style="color: #ffffff"><g:message code="subCategory.subAccountHead.label" default="Sub Account Head"/></th>
                <g:sortableColumn property="isIntrest"
                                  title="${message(code: 'subCategory.isIntrest.label', default: 'Is Intrest')}"/>
                <th colspan="2" style="color: #ffffff;">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${subCategoryInstanceList}" status="i" var="subCategoryInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">
                    <td>${fieldValue(bean: subCategoryInstance, field: "name")}</td>
                    <td>${fieldValue(bean: subCategoryInstance, field: "subAccountHead.name")}</td>
                    <td>${fieldValue(bean: subCategoryInstance, field: "isIntrest")}</td>
                    <td>
                        <g:form method="get" action="edit" resource="${subCategoryInstance}">
                            <button class="editDeleteBtn">
                                <i class="fa fa-pencil" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                            </button>
                        </g:form>
                    </td>
                    <td>
                        <g:form url="[resource: subCategoryInstance, action: 'delete']" method="DELETE">
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
    <g:paginate total="${subCategoryInstanceCount ?: 0}"/>
</div>
</body>
</html>
