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

    }
    def destroy = {
    }
}
