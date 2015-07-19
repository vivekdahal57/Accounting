class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/welcome"(controller: 'user',action: 'welcome')
        "500"(view: '/error')
        "/"(controller: 'login', action: 'auth')
//        "/"(view: '/index')
    }
}
