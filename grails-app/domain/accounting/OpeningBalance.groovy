package accounting

class OpeningBalance implements Serializable {
    SubCategory subCategory
    Double openingBalance
    Boolean debit
    static constraints = {
        subCategory unique: true
    }
}
