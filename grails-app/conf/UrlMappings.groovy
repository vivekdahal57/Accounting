class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/welcome"(view: 'welcome')
        "500"(view: '/error')
        "/"(controller: 'login', action: 'auth')
    }
}
