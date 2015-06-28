package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountingPeriodController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountingPeriod.list(params), model:[accountingPeriodInstanceCount: AccountingPeriod.count()]
    }

    def show(AccountingPeriod accountingPeriodInstance) {
        respond accountingPeriodInstance
    }

    def create() {
        respond new AccountingPeriod(params)
    }

    @Transactional
    def save(AccountingPeriod accountingPeriodInstance) {
        if (accountingPeriodInstance == null) {
            notFound()
            return
        }

        if (accountingPeriodInstance.hasErrors()) {
            respond accountingPeriodInstance.errors, view:'create'
            return
        }

        accountingPeriodInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountingPeriod.label', default: 'AccountingPeriod'), accountingPeriodInstance.id])
                redirect accountingPeriodInstance
            }
            '*' { respond accountingPeriodInstance, [status: CREATED] }
        }
    }

    def edit(AccountingPeriod accountingPeriodInstance) {
        respond accountingPeriodInstance
    }

    @Transactional
    def update(AccountingPeriod accountingPeriodInstance) {
        if (accountingPeriodInstance == null) {
            notFound()
            return
        }

        if (accountingPeriodInstance.hasErrors()) {
            respond accountingPeriodInstance.errors, view:'edit'
            return
        }

        accountingPeriodInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountingPeriod.label', default: 'AccountingPeriod'), accountingPeriodInstance.id])
                redirect accountingPeriodInstance
            }
            '*'{ respond accountingPeriodInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountingPeriod accountingPeriodInstance) {

        if (accountingPeriodInstance == null) {
            notFound()
            return
        }

        accountingPeriodInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountingPeriod.label', default: 'AccountingPeriod'), accountingPeriodInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountingPeriod.label', default: 'AccountingPeriod'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
