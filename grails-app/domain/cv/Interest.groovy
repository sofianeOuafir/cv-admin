package cv

class Interest {
    String title
    String icon
    User user
    static constraints = {
        title blank: false, nullable: false
        icon blank: false, nullable: false
    }
}
