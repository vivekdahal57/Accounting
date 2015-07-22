package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubAccountHeadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SubAccountHead.list(params), model:[subAccountHeadInstanceCount: SubAccountHead.count()]
    }

    def show(SubAccountHead subAccountHeadInstance) {
        respond subAccountHeadInstance
    }

    def create() {
        respond new SubAccountHead(params)
    }

    @Transactional
    def save(SubAccountHead subAccountHeadInstance) {
        if (subAccountHeadInstance == null) {
            notFound()
            return
        }

        if (subAccountHeadInstance.hasErrors()) {
            respond subAccountHeadInstance.errors, view:'create'
            return
        }

        subAccountHeadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subAccountHead.label', default: 'SubAccountHead'), subAccountHeadInstance.id])
                redirect (action:"index")
            }
            '*' { respond subAccountHeadInstance, [status: CREATED] }
        }
    }

    def edit(SubAccountHead subAccountHeadInstance) {
        respond subAccountHeadInstance
    }

    @Transactional
    def update(SubAccountHead subAccountHeadInstance) {
        if (subAccountHeadInstance == null) {
            notFound()
            return
        }

        if (subAccountHeadInstance.hasErrors()) {
            respond subAccountHeadInstance.errors, view:'edit'
            return
        }

        subAccountHeadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SubAccountHead.label', default: 'SubAccountHead'), subAccountHeadInstance.id])
                redirect subAccountHeadInstance
            }
            '*'{ respond subAccountHeadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SubAccountHead subAccountHeadInstance) {

        if (subAccountHeadInstance == null) {
            notFound()
            return
        }

        subAccountHeadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SubAccountHead.label', default: 'SubAccountHead'), subAccountHeadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subAccountHead.label', default: 'SubAccountHead'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
