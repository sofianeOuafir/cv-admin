package cv

class User {
    String firstname
    String surname
    String description
    String phoneNumber
    String email
    String github
    String jobDescription
    static hasMany = [workExperiences: WorkExperience, educations: Education, professionalSkills: ProfessionalSkill, interests: Interest, personalProjects: PersonalProject]


    static constraints = {
        firstname blank: false, nullable: false
        surname blank: false, nullable: false
        description blank: false, nullable: false
        email email: true, nullable: false
        jobDescription blank: false, nullable: false
        github blank: false, nullable: false

    }
}
