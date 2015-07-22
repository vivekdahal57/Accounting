package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MembersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Members.list(params), model:[membersInstanceCount: Members.count()]
    }

    def show(Members membersInstance) {
        respond membersInstance
    }

    def create() {
        respond new Members(params)
    }

    @Transactional
    def save(Members membersInstance) {
        if (membersInstance == null) {
            notFound()
            return
        }

        if (membersInstance.hasErrors()) {
            respond membersInstance.errors, view:'create'
            return
        }

        membersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'members.label', default: 'Members'), membersInstance.id])
                redirect (action:"index")
            }
            '*' { respond membersInstance, [status: CREATED] }
        }
    }

    def edit(Members membersInstance) {
        respond membersInstance
    }

    @Transactional
    def update(Members membersInstance) {
        if (membersInstance == null) {
            notFound()
            return
        }

        if (membersInstance.hasErrors()) {
            respond membersInstance.errors, view:'edit'
            return
        }

        membersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Members.label', default: 'Members'), membersInstance.id])
                redirect membersInstance
            }
            '*'{ respond membersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Members membersInstance) {

        if (membersInstance == null) {
            notFound()
            return
        }

        membersInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Members.label', default: 'Members'), membersInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'members.label', default: 'Members'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
