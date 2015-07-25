package accounting


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpeningBalanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OpeningBalance.list(params), model: [openingBalanceInstanceCount: OpeningBalance.count()]
    }

    def show(OpeningBalance openingBalanceInstance) {
        respond openingBalanceInstance
    }

    def create() {
        respond new OpeningBalance(params)
    }

    @Transactional
    def save(OpeningBalance openingBalanceInstance) {
        if (openingBalanceInstance == null) {
            notFound()
            return
        }

        if (openingBalanceInstance.hasErrors()) {
            respond openingBalanceInstance.errors, view: 'create'
            return
        }

        openingBalanceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'openingBalance.label', default: 'OpeningBalance'), openingBalanceInstance.id])
                redirect(action: "index")
            }
            '*' { respond openingBalanceInstance, [status: CREATED] }
        }
    }

    def edit(OpeningBalance openingBalanceInstance) {
        respond openingBalanceInstance
    }

    @Transactional
    def update(OpeningBalance openingBalanceInstance) {
        if (openingBalanceInstance == null) {
            notFound()
            return
        }

        if (openingBalanceInstance.hasErrors()) {
            respond openingBalanceInstance.errors, view: 'edit'
            return
        }

        openingBalanceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OpeningBalance.label', default: 'OpeningBalance'), openingBalanceInstance.id])
                redirect openingBalanceInstance
            }
            '*' { respond openingBalanceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OpeningBalance openingBalanceInstance) {

        if (openingBalanceInstance == null) {
            notFound()
            return
        }

        openingBalanceInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OpeningBalance.label', default: 'OpeningBalance'), openingBalanceInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'openingBalance.label', default: 'OpeningBalance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    @Transactional
    def ajaxSubAccountHeadList() {
        int acc_id = Integer.parseInt(params.id)
        List subAccList = SubAccountHead.findAllByAccountHead(AccountHead.findById(acc_id))
        if (subAccList.isEmpty()) {
            render(template: 'template/subAccountHead', model: [subAccList: subAccList])
        } else {
            render(template: 'template/subAccountHead', model: [subAccList: subAccList])
        }
    }

    @Transactional
    def ajaxSubCategoryList() {
        int acc_id = Integer.parseInt(params.id)
        List subCatList = SubCategory.findAllBySubAccountHead(SubAccountHead.findById(acc_id))
        if (subCatList.isEmpty()) {
            println "Inside:"
            render(template: 'template/subCategory', model: [subCatList: subCatList])
        } else {
            render(template: 'template/subCategory', model: [subCatList: subCatList])
        }
    }
}
