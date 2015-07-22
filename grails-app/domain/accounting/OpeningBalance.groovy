package accounting

class OpeningBalance implements Serializable {
    AccountHead accountHead
    SubAccountHead subAccountHead
    SubCategory subCategory
    Double openingBalance
    Boolean debit
    static constraints = {
    }
}
