class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "500"(view: '/error')
        "/"(controller: 'login', action: 'auth')
//        "*"(contoller: 'login', action: 'auth')
    }
}
