package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VoucherController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Voucher.list(params), model:[voucherInstanceCount: Voucher.count()]
    }

    def show(Voucher voucherInstance) {
        respond voucherInstance
    }

    def create() {
        respond new Voucher(params)
    }

    @Transactional
    def save(Voucher voucherInstance) {
        if (voucherInstance == null) {
            notFound()
            return
        }

        if (voucherInstance.hasErrors()) {
            respond voucherInstance.errors, view:'create'
            return
        }

        voucherInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'voucher.label', default: 'Voucher'), voucherInstance.id])
                redirect voucherInstance
            }
            '*' { respond voucherInstance, [status: CREATED] }
        }
    }

    def edit(Voucher voucherInstance) {
        respond voucherInstance
    }

    @Transactional
    def update(Voucher voucherInstance) {
        if (voucherInstance == null) {
            notFound()
            return
        }

        if (voucherInstance.hasErrors()) {
            respond voucherInstance.errors, view:'edit'
            return
        }

        voucherInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Voucher.label', default: 'Voucher'), voucherInstance.id])
                redirect voucherInstance
            }
            '*'{ respond voucherInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Voucher voucherInstance) {

        if (voucherInstance == null) {
            notFound()
            return
        }

        voucherInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Voucher.label', default: 'Voucher'), voucherInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucher.label', default: 'Voucher'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
