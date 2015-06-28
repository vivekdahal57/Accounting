package accounting

class AccountHead {
    String name

    static constraints = {
        name (nullable: false,unique: true)
    }
}
