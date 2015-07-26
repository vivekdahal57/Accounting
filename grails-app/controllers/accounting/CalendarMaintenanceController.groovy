package accounting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CalendarMaintenanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CalendarMaintenance.list(params), model:[calendarMaintenanceInstanceCount: CalendarMaintenance.count()]
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
            respond calendarMaintenanceInstance.errors, view:'create'
            return
        }

        calendarMaintenanceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'calendarMaintenance.label', default: 'CalendarMaintenance'), calendarMaintenanceInstance.id])
                redirect (action:"index")
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
            respond calendarMaintenanceInstance.errors, view:'edit'
            return
        }

        calendarMaintenanceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CalendarMaintenance.label', default: 'CalendarMaintenance'), calendarMaintenanceInstance.id])
                redirect (action:"index")
            }
            '*'{ respond calendarMaintenanceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CalendarMaintenance calendarMaintenanceInstance) {

        if (calendarMaintenanceInstance == null) {
            notFound()
            return
        }

        calendarMaintenanceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CalendarMaintenance.label', default: 'CalendarMaintenance'), calendarMaintenanceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendarMaintenance.label', default: 'CalendarMaintenance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
