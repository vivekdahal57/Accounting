<%@ page import="accounting.AccountHead" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'accountHead.label', default: 'Account Head')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrap" id="cont-wrap">
            <div class="col-md-12 table-wrap">
                <div class="pageTitle">
                    <h3><g:message code="default.list.label" args="[entityName]"/></h3>
                    <a href="javascript:void(0);" id="downloadLink" alt="Download Report" title="Download Report">
                        <div class="btnWrap"><i class="fa fa-download"></i></div>
                    </a>
                    <a href="javascript:void(0);" id="sideBarLink" alt="Access Sidebar" title="Access SideBar">
                        <div class="btnWrap"><i class="fa fa-sign-in"></i></div>
                    </a>
                </div>

                <div class="addressBar">
                    <g:link controller="dashboard" action="index" href="#">
                        DashBoard
                    </g:link> |
                    <g:message code="default.list.label" args="[entityName]"/>
                    <div class="addItem">
                        <i class="fa fa-user-plus"></i>
                        <g:link class="create" action="create">
                            <g:message code="default.new.label" args="[entityName]"/>
                        </g:link>
                    </div>
                </div>
                <table class="table table-hover table-striped table_override">
                    <thead>
                        <tr class="thead_tr">
                            <g:sortableColumn property="name" title="${message(code: 'accountHead.name.label', default: 'Name')}"
                                style="text-align:center;"/>
                            <th colspan="2" style="color: #ffffff;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${accountHeadInstanceList}" status="i" var="accountHeadInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'} tbody_tr">

                                <td>${fieldValue(bean: accountHeadInstance, field: "name")}</td>
                                <td>
                                    <g:form method="get" action="edit" resource="${accountHeadInstance}">
                                        <button class="editDeleteBtn">
                                            <i class="fa fa-edit" style="font-size: 18px;" title="Edit" alt="Edit"></i>
                                        </button>
                                    </g:form>
                                </td>
                                <td>
                                    <g:form url="[resource: accountHeadInstance, action: 'delete']" method="DELETE">
                                        <button class="editDeleteBtn" type="submit"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                                        <i class="fa fa-close" style="font-size: 18px;" title="Delete" alt="Delete"></i>
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
            <g:paginate total="${accountHeadInstanceCount ?: 0}"/>
        </div>
    </body>
</html>
