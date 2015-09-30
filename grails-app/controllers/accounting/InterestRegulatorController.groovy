package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InterestRegulatorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InterestRegulator.list(params), model:[intrestRegulatorInstanceCount: InterestRegulator.count()]
    }

    def show(InterestRegulator intrestRegulatorInstance) {
        respond intrestRegulatorInstance
    }

    def create() {
        respond new InterestRegulator(params)
    }

    @Transactional
    def save(InterestRegulator intrestRegulatorInstance) {
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
                flash.message = message(code: 'default.created.message', args: [message(code: 'intrestRegulator.label', default: 'InterestRegulator'), intrestRegulatorInstance.id])
                redirect (action:"index")
            }
            '*' { respond intrestRegulatorInstance, [status: CREATED] }
        }
    }

    def edit(InterestRegulator intrestRegulatorInstance) {
        respond intrestRegulatorInstance
    }

    @Transactional
    def update(InterestRegulator intrestRegulatorInstance) {
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
                flash.message = message(code: 'default.updated.message', args: [message(code: 'InterestRegulator.label', default: 'InterestRegulator'), intrestRegulatorInstance.id])
                redirect (action:"index")
            }
            '*'{ respond intrestRegulatorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(InterestRegulator intrestRegulatorInstance) {

        if (intrestRegulatorInstance == null) {
            notFound()
            return
        }

        intrestRegulatorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'InterestRegulator.label', default: 'InterestRegulator'), intrestRegulatorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'intrestRegulator.label', default: 'InterestRegulator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
