package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountHeadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountHead.list(params), model:[accountHeadInstanceCount: AccountHead.count()]
    }

    def show(AccountHead accountHeadInstance) {
        respond accountHeadInstance
    }

    def create() {
        respond new AccountHead(params)
    }

    @Transactional
    def save(AccountHead accountHeadInstance) {
        if (accountHeadInstance == null) {
            notFound()
            return
        }

        if (accountHeadInstance.hasErrors()) {
            respond accountHeadInstance.errors, view:'create'
            return
        }

        accountHeadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountHead.label', default: 'AccountHead'), accountHeadInstance.id])
                redirect (action:"index")
            }
            '*' { respond accountHeadInstance, [status: CREATED] }
        }
    }

    def edit(AccountHead accountHeadInstance) {
        respond accountHeadInstance
    }

    @Transactional
    def update(AccountHead accountHeadInstance) {
        if (accountHeadInstance == null) {
            notFound()
            return
        }

        if (accountHeadInstance.hasErrors()) {
            respond accountHeadInstance.errors, view:'edit'
            return
        }

        accountHeadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountHead.label', default: 'AccountHead'), accountHeadInstance.id])
                redirect (action:"index")
            }
            '*'{ respond accountHeadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountHead accountHeadInstance) {

        if (accountHeadInstance == null) {
            notFound()
            return
        }

        accountHeadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountHead.label', default: 'AccountHead'), accountHeadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountHead.label', default: 'AccountHead'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
