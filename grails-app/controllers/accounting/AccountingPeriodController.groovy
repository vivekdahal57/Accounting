package accounting


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountingPeriodController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {}

    def getIndexData(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        if (params.offset != null) {
            render(template: 'dataTable', model: [accountingPeriodInstanceList : AccountingPeriod.list(params),
                                                  accountingPeriodInstanceCount: AccountingPeriod.count(), startPoint: Integer.parseInt(params.offset)])
        } else {
            render(template: 'dataTable', model: [accountingPeriodInstanceList : AccountingPeriod.list(params),
                                                  accountingPeriodInstanceCount: AccountingPeriod.count(), startPoint: 0])
        }
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
            respond accountingPeriodInstance.errors, view: 'create'
            return
        }

        accountingPeriodInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Accounting Period Created')
                redirect(action: "index")
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
            respond accountingPeriodInstance.errors, view: 'edit'
            return
        }

        accountingPeriodInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Accounting Period Updated')
                redirect(action: "index")
            }
            '*' { respond accountingPeriodInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountingPeriod accountingPeriodInstance) {
        if (accountingPeriodInstance == null) {
            render("Error Deleting " + accountingPeriodInstance.startDate)
//            notFound()
//            return
        }
        accountingPeriodInstance.delete flush: true
        render "Deleted Successfully!!!"
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountingPeriod.label', default: 'AccountingPeriod'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
