package cv

class PersonalProject {
    String title
    Date startdate
    String description
    String website
    String technology
    static belongsTo = [user: User]

    static constraints = {
        title blank: false, nullable: false
        startdate blank: false, nullable: false
        description blank: false, nullable: false
        website blank: false, nullable: false
        technology blank: false, nullable: false
    }
}
