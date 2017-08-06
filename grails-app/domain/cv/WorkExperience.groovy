package cv

class WorkExperience {
    String title
    String website
    Date startdate
    Date enddate
    String description
    String place
    User user
    static hasMany = [tasks: Task]

    static constraints = {
        title blank: false, nullable: false
        startdate blank: false, nullable: false
        enddate blank: false, nullable: false
        description blank: false, nullable: false
        place blank: false, nullable: false
    }
}
