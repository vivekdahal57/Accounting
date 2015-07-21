package authorization


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RoleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Role.list(params), model: [roleInstanceCount: Role.count()]
    }

    def show(Role roleInstance) {
        respond roleInstance
    }

    def create() {
        respond new Role(params)
    }

    @Transactional
    def save(Role roleInstance) {
        if (roleInstance == null) {
            notFound()
            return
        }

        if (roleInstance.hasErrors()) {
            respond roleInstance.errors, view: 'create'
            return
        }

        roleInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'role.label', default: 'Role'), roleInstance.id])
                redirect roleInstance
            }
            '*' { respond roleInstance, [status: CREATED] }
        }
    }

    def edit(Role roleInstance) {
        respond roleInstance
    }

    @Transactional
    def update(Role roleInstance) {
        if (roleInstance == null) {
            notFound()
            return
        }

        if (roleInstance.hasErrors()) {
            respond roleInstance.errors, view: 'edit'
            return
        }

        roleInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Role.label', default: 'Role'), roleInstance.id])
                redirect roleInstance
            }
            '*' { respond roleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Role roleInstance) {

        if (roleInstance == null) {
            notFound()
            return
        }

        roleInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Role.label', default: 'Role'), roleInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }

    }

    def exceptList() {
        List exceptList= new ArrayList()
        int roleId=params?.id
        for (Role temp : Role.findAll()) {
            if (temp.id == Integer.parseInt(roleId)){
                continue
            } else {
                exceptList.add(temp)
            }
        }
        render(template:"/role/template/roleList",model:[list:exceptList, oldRole:Role.get(roleId)])
    }
    
    @Transactional(readOnly=false)
    def transferRole(){
        int newRoleId=params?.rolename
        int oldRoleId=params?.oldRole
        if(UserRole.findByRole(Role.findById(oldRoleId))){
            def updateUserRole=UserRole.executeUpdate("UPDATE UserRole SET role_id=? WHERE role_id=?",[newRoleId,oldRoleId]);
            if (updateUserRole) {
                println("Role updated")
                println("Deleting old role...")
                deleteRole(oldRoleId)
            } else {
                println("Role cannot be updated")
                flash.message="Role cannot be updated"
            }
        }else{
            println("Role updated")
            println("Deleting old role...")
            deleteRole(oldRoleId)
        }

    }
    
    def deleteRole(String oldRoleId){
        def roleId = Role.get(Integer.parseInt(oldRoleId))
        roleId.delete(flush: true)
        println("Role must have been deleted")
        flash.message="Role must have been deleted"
        redirect(action:"index")
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'role.label', default: 'Role'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
