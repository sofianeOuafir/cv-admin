import cv.*

class BootStrap {

    def init = { servletContext ->
        def user = new User(firstname: 'Souphian', 'surname' : 'OUAFIR', 'description' : 'description à venir', 'email': 'sofiane.ouafir@live.fr', 'jobDescription': 'job description à venir', 'github': 'https://github.com/sofianeOuafir', phoneNumber: 'xxxxxxxxxxx').save(flush: true)

        def workExperience1 = new WorkExperience(title: 'workExperience1', startdate: new Date(), enddate: new Date(), description: 'lala', place: 'la', user: user).save(flush: true)
        def workExperience2 = new WorkExperience(title: 'workExperience2', startdate: new Date(), enddate: new Date(), description: 'lala', place: 'la', user: user).save(flush: true)

        def education1 = new Education(title: 'education1', startdate: new Date(), enddate: new Date(), description: 'lala', place: 'la', user: user).save(flush: true)
        def education2 = new Education(title: 'education2', startdate: new Date(), enddate: new Date(), description: 'lala', place: 'la', user: user).save(flush: true)

        def professionalSkill = new ProfessionalSkill(title: 'skill1', achievment: 80, user: user).save(flush: true)

        def adminRole = new SecRole('ROLE_ADMIN').save()
        def userRole = new SecRole('ROLE_USER').save()

        def testUser = new SecUser('me', 'password').save()

        SecUserSecRole.create testUser, adminRole, true


    }
    def destroy = {
    }
}
