package cv

class Task {
    String description
    WorkExperience workExperience

    static constraints = {
        description blank: false, nullable: false
    }
}
