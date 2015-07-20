<g:form method="post" controller="role" action="transferRole">
    <div style="margin-bottom:20px;">
        <input type="hidden" name="oldRole" value="${oldRole.id}">
        <label for="roleName">
            Select a role:
        </label>
        <select name="rolename" class="form-control" id="roleName">
            <g:each var="roleValue" in="${list}">
                <option value="${roleValue.id}">${roleValue.authority}</option>
            </g:each>
        </select>
    </div>
    <button type="submit" class="btn editDeleteBtn">
        Proceed
    </button>
</g:form>