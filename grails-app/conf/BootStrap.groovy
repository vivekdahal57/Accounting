import authorization.*

import java.lang.reflect.Array

class BootStrap {

    def init = { servletContext ->
        def adminUser = User.findByUsername('admin') ?: new User(
                email: 'admin@gmail.com',
                firstName: 'Admin',
                lastName: 'Admin',
                phone: '8789787',
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        def basicUser = User.findByUsername('guest') ?: new User(
            email: 'user@gmail.com',
                firstName: 'User',
                lastName: 'User',
                phone: '8789787',
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
        def test =  ["/", "/index", "/index.gsp", "/**/favicon.ico", "/assets/**", "/**/js/**","/**/css/**", "/**/images/**","**/fonts/**","/login", "/login.*", "/login/*", "/logout","/logout.*", "/logout/*","/welcome", "/welcome.gsp"]
        for (String url : test) {
            Requestmap.findByUrl(url) ?: new Requestmap(url: url, configAttribute: 'permitAll').save()
        }
        Requestmap.findByUrl('/*/**') ?: new Requestmap(url: '/*/**', configAttribute: 'ROLE_ADMIN').save()
    }
    def destroy = {
    }
}
