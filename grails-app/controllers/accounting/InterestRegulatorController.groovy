package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InterestRegulatorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InterestRegulator.list(params), model:[interestRegulatorInstanceCount: InterestRegulator.count()]
    }

    def show(InterestRegulator interestRegulatorInstance) {
        respond interestRegulatorInstance
    }

    def create() {
        respond new InterestRegulator(params)
    }

    @Transactional
    def save(InterestRegulator interestRegulatorInstance) {
        if (interestRegulatorInstance == null) {
            notFound()
            return
        }

        if (interestRegulatorInstance.hasErrors()) {
            respond interestRegulatorInstance.errors, view:'create'
            return
        }

        interestRegulatorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'interestRegulator.label', default: 'InterestRegulator'), interestRegulatorInstance.id])
                redirect (action:"index")
            }
            '*' { respond interestRegulatorInstance, [status: CREATED] }
        }
    }

    def edit(InterestRegulator interestRegulatorInstance) {
        respond interestRegulatorInstance
    }

    @Transactional
    def update(InterestRegulator interestRegulatorInstance) {
        if (interestRegulatorInstance == null) {
            notFound()
            return
        }

        if (interestRegulatorInstance.hasErrors()) {
            respond interestRegulatorInstance.errors, view:'edit'
            return
        }

        interestRegulatorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'InterestRegulator.label', default: 'InterestRegulator'), interestRegulatorInstance.id])
                redirect (action:"index")
            }
            '*'{ respond interestRegulatorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(InterestRegulator interestRegulatorInstance) {

        if (interestRegulatorInstance == null) {
            notFound()
            return
        }

        interestRegulatorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'InterestRegulator.label', default: 'InterestRegulator'), interestRegulatorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'interestRegulator.label', default: 'InterestRegulator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
