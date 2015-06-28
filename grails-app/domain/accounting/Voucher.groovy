package accounting

class Voucher implements Serializable {
    Integer voucherNo
    Integer referenceId
    Date date
    SubCategory subCategory
    Boolean bank
    String name
    String narration
    Integer chequeNo
    Double amount
    String currency

    static constraints = {
        voucherNo blank: false, unique: true
    }

    static mapping = {
        cache true
    }
}
