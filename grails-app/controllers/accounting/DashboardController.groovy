package accounting

class DashboardController {

    def index() {
        if (authorization.UserController.getUserName() == null) {
            redirect(controller: 'login')
        } else {
            render(view: 'index', model: [pageTitle: ' Dashboard'])
        }
    }

}