package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NomineesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nominees.list(params), model:[nomineesInstanceCount: Nominees.count()]
    }

    def show(Nominees nomineesInstance) {
        respond nomineesInstance
    }

    def create() {
        respond new Nominees(params)
    }

    @Transactional
    def save(Nominees nomineesInstance) {
        if (nomineesInstance == null) {
            notFound()
            return
        }

        if (nomineesInstance.hasErrors()) {
            respond nomineesInstance.errors, view:'create'
            return
        }

        nomineesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nominees.label', default: 'Nominees'), nomineesInstance.id])
                redirect (action:"index")
            }
            '*' { respond nomineesInstance, [status: CREATED] }
        }
    }

    def edit(Nominees nomineesInstance) {
        respond nomineesInstance
    }

    @Transactional
    def update(Nominees nomineesInstance) {
        if (nomineesInstance == null) {
            notFound()
            return
        }

        if (nomineesInstance.hasErrors()) {
            respond nomineesInstance.errors, view:'edit'
            return
        }

        nomineesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nominees.label', default: 'Nominees'), nomineesInstance.id])
                redirect (action:"index")
            }
            '*'{ respond nomineesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nominees nomineesInstance) {

        if (nomineesInstance == null) {
            notFound()
            return
        }

        nomineesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nominees.label', default: 'Nominees'), nomineesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nominees.label', default: 'Nominees'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
