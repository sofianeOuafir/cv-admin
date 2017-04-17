package cv

class ProfessionalSkill {
    String title
    int achievment
    User user

    static constraints = {
        title blank: false, nullable: false
    }
}
