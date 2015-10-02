package accounting

class UtilityController {

    def index() {
        render(view: "index", model: [pageTitle: 'Utility'])
    }
}
