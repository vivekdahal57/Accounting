package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpeaningBalanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OpeaningBalance.list(params), model:[opeaningBalanceInstanceCount: OpeaningBalance.count()]
    }

    def show(OpeaningBalance opeaningBalanceInstance) {
        respond opeaningBalanceInstance
    }

    def create() {
        respond new OpeaningBalance(params)
    }

    @Transactional
    def save(OpeaningBalance opeaningBalanceInstance) {
        if (opeaningBalanceInstance == null) {
            notFound()
            return
        }

        if (opeaningBalanceInstance.hasErrors()) {
            respond opeaningBalanceInstance.errors, view:'create'
            return
        }

        opeaningBalanceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'opeaningBalance.label', default: 'OpeaningBalance'), opeaningBalanceInstance.id])
                redirect (action:"index")
            }
            '*' { respond opeaningBalanceInstance, [status: CREATED] }
        }
    }

    def edit(OpeaningBalance opeaningBalanceInstance) {
        respond opeaningBalanceInstance
    }

    @Transactional
    def update(OpeaningBalance opeaningBalanceInstance) {
        if (opeaningBalanceInstance == null) {
            notFound()
            return
        }

        if (opeaningBalanceInstance.hasErrors()) {
            respond opeaningBalanceInstance.errors, view:'edit'
            return
        }

        opeaningBalanceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OpeaningBalance.label', default: 'OpeaningBalance'), opeaningBalanceInstance.id])
                redirect opeaningBalanceInstance
            }
            '*'{ respond opeaningBalanceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OpeaningBalance opeaningBalanceInstance) {

        if (opeaningBalanceInstance == null) {
            notFound()
            return
        }

        opeaningBalanceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OpeaningBalance.label', default: 'OpeaningBalance'), opeaningBalanceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'opeaningBalance.label', default: 'OpeaningBalance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
