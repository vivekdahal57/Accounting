package accounting


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MemberSchemeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MemberScheme.list(params), model: [memberSchemeInstanceCount: MemberScheme.count()]
    }

    def show(MemberScheme memberSchemeInstance) {
        respond memberSchemeInstance
    }

    def create() {
        respond new MemberScheme(params)
    }

    @Transactional
    def save(MemberScheme memberSchemeInstance) {
        if (memberSchemeInstance == null) {
            notFound()
            return
        }

        if (memberSchemeInstance.hasErrors()) {
            respond memberSchemeInstance.errors, view: 'create'
            return
        }

        memberSchemeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'memberScheme.label', default: 'MemberScheme'), memberSchemeInstance.id])
                redirect(action: "index")
            }
            '*' { respond memberSchemeInstance, [status: CREATED] }
        }
    }

    def edit(MemberScheme memberSchemeInstance) {
        respond memberSchemeInstance
    }

    @Transactional
    def update(MemberScheme memberSchemeInstance) {
        if (memberSchemeInstance == null) {
            notFound()
            return
        }

        if (memberSchemeInstance.hasErrors()) {
            respond memberSchemeInstance.errors, view: 'edit'
            return
        }

        memberSchemeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MemberScheme.label', default: 'MemberScheme'), memberSchemeInstance.id])
                redirect(action: "index")
            }
            '*' { respond memberSchemeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MemberScheme memberSchemeInstance) {

        if (memberSchemeInstance == null) {
            notFound()
            return
        }

        memberSchemeInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MemberScheme.label', default: 'MemberScheme'), memberSchemeInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'memberScheme.label', default: 'MemberScheme'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
