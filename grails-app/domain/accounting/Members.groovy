package accounting

class Members {
    String firstName
    String middleName
    String lastName
    String email
    Date dob
    String phone
    String mobile
    String address
    String city
    String country
    Date memberJoinDate

    static constraints = {
    }
     static transients = [ 'fullName' ]

    public String getFullName() {
        return "$firstName $middleName $lastName"
    }
}
