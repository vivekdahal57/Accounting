package accounting

class DashboardController {

    def index() {
        if (authorization.UserController.getUserName() == null) {
            println("No User Session Found. Redirecting to Login Page >>>>>>>>>>>")
            redirect(controller: 'login', action: 'auth')
        } else {
            render(view: 'index', model: [pageTitle: ' Dashboard'])
        }
    }

}