package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IntrestRegulatorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond IntrestRegulator.list(params), model:[intrestRegulatorInstanceCount: IntrestRegulator.count()]
    }

    def show(IntrestRegulator intrestRegulatorInstance) {
        respond intrestRegulatorInstance
    }

    def create() {
        respond new IntrestRegulator(params)
    }

    @Transactional
    def save(IntrestRegulator intrestRegulatorInstance) {
        if (intrestRegulatorInstance == null) {
            notFound()
            return
        }

        if (intrestRegulatorInstance.hasErrors()) {
            respond intrestRegulatorInstance.errors, view:'create'
            return
        }

        intrestRegulatorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'intrestRegulator.label', default: 'IntrestRegulator'), intrestRegulatorInstance.id])
                redirect (action:"index")
            }
            '*' { respond intrestRegulatorInstance, [status: CREATED] }
        }
    }

    def edit(IntrestRegulator intrestRegulatorInstance) {
        respond intrestRegulatorInstance
    }

    @Transactional
    def update(IntrestRegulator intrestRegulatorInstance) {
        if (intrestRegulatorInstance == null) {
            notFound()
            return
        }

        if (intrestRegulatorInstance.hasErrors()) {
            respond intrestRegulatorInstance.errors, view:'edit'
            return
        }

        intrestRegulatorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'IntrestRegulator.label', default: 'IntrestRegulator'), intrestRegulatorInstance.id])
                redirect (action:"index")
            }
            '*'{ respond intrestRegulatorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(IntrestRegulator intrestRegulatorInstance) {

        if (intrestRegulatorInstance == null) {
            notFound()
            return
        }

        intrestRegulatorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'IntrestRegulator.label', default: 'IntrestRegulator'), intrestRegulatorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'intrestRegulator.label', default: 'IntrestRegulator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
