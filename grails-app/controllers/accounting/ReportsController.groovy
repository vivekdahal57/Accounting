package accounting

class ReportsController {

    def index() {
        render(view: "index", model: [pageTitle: 'Reports'])
    }
}
