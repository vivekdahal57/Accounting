package accounting


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CalendarMaintenanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {

    }

    def getIndexData(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        if (params.offset != null) {
            render(template: 'dataTable', model: [calendarMaintenanceInstanceList : CalendarMaintenance.list(params),
                                                  calendarMaintenanceInstanceCount: CalendarMaintenance.count(), startPoint: Integer.parseInt(params.offset)])
        } else {
            render(template: 'dataTable', model: [calendarMaintenanceInstanceList : CalendarMaintenance.list(params),
                                                  calendarMaintenanceInstanceCount: CalendarMaintenance.count(), startPoint: 0])
        }
    }

    def show(CalendarMaintenance calendarMaintenanceInstance) {
        respond calendarMaintenanceInstance
    }

    def create() {
        respond new CalendarMaintenance(params)
    }

    @Transactional
    def save(CalendarMaintenance calendarMaintenanceInstance) {
        if (calendarMaintenanceInstance == null) {
            notFound()
            return
        }

        if (calendarMaintenanceInstance.hasErrors()) {
            respond calendarMaintenanceInstance.errors, view: 'create'
            return
        }

        calendarMaintenanceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Calender Created')
                redirect(action: "index")
            }
            '*' { respond calendarMaintenanceInstance, [status: CREATED] }
        }
    }

    def edit(CalendarMaintenance calendarMaintenanceInstance) {
        respond calendarMaintenanceInstance
    }

    @Transactional
    def update(CalendarMaintenance calendarMaintenanceInstance) {
        if (calendarMaintenanceInstance == null) {
            notFound()
            return
        }

        if (calendarMaintenanceInstance.hasErrors()) {
            respond calendarMaintenanceInstance.errors, view: 'edit'
            return
        }

        calendarMaintenanceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'Calender Updated')
                redirect(action: "index")
            }
            '*' { respond calendarMaintenanceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CalendarMaintenance calendarMaintenanceInstance) {

        if (calendarMaintenanceInstance == null) {
//            notFound()
//            return
        }
        calendarMaintenanceInstance.delete flush: true
        render "Deleted Successfully!!!"
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendarMaintenance.label', default: 'CalendarMaintenance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
