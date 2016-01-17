package accounting


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountHeadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {}

    def getIndexData(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        if (params.offset != null) {
            render(template: 'dataTable', model: [accountHeadInstanceList : AccountHead.list(params),
                                                  accountHeadInstanceCount: AccountHead.count(), startPoint: Integer.parseInt(params.offset)])
        } else {
            render(template: 'dataTable', model: [accountHeadInstanceList : AccountHead.list(params),
                                                  accountHeadInstanceCount: AccountHead.count(), startPoint: 0])
        }
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
            respond accountHeadInstance.errors, view: 'create'
            return
        }

        accountHeadInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Account Head Created')
                redirect(action: "index")
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
            respond accountHeadInstance.errors, view: 'edit'
            return
        }

        accountHeadInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Account Head Updated')
                redirect(action: "index")
            }
            '*' { respond accountHeadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountHead accountHeadInstance) {
        if (accountHeadInstance == null) {
            render("Error Deleting " + accountHeadInstance.name)
//            notFound()
//            return
        }
        accountHeadInstance.delete flush: true
        render "Deleted Successfully!!!"
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Entry Not Found')
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
