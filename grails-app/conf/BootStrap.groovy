import authorization.*

class BootStrap {

    def init = { servletContext ->
        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        def basicUser = User.findByUsername('guest') ?: new User(
                username: 'guest',
                password: 'guest',                          //pw encoded by security plugin
                enabled: true).save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(
                authority: 'ROLE_ADMIN',
                enabled: true).save(failOnError: true)

        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(
                authority: 'ROLE_USER',
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }
        if (!basicUser.authorities.contains(userRole)) {
            UserRole.create basicUser, userRole
        }
        RequestMap.findByUrl('/') ?: new RequestMap(url: '/', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/welcome') ?: new RequestMap(url: '/welcome', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/welcome.gsp') ?: new RequestMap(url: '/welcome.gsp', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/assets/**') ?: new RequestMap(url: '/assets/**', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/**/js/**') ?: new RequestMap(url: '/**/js/**', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/**/css/**') ?: new RequestMap(url: '/**/css/**', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/**/images/**') ?: new RequestMap(url: '/**/images/**', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/**/favicon.ico') ?: new RequestMap(url: '/**/favicon.ico', configAttribute: 'permitAll', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/user/**') ?: new RequestMap(url: '/user/**', configAttribute: 'ROLE_ADMIN', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/role/**') ?: new RequestMap(url: '/role/**', configAttribute: 'ROLE_ADMIN', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/userrole/**') ?: new RequestMap(url: '/userrole/**', configAttribute: 'ROLE_ADMIN', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/*/**') ?: new RequestMap(url: '/*/**', configAttribute: 'ROLE_USER', enabled: true).save(failOnError: true)
        RequestMap.findByUrl('/*/**') ?: new RequestMap(url: '/*/**', configAttribute: 'ROLE_ADMIN', enabled: true).save(failOnError: true)
    }
    def destroy = {
    }
}
