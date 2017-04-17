package cv



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class ProfessionalSkillController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProfessionalSkill.list(params), model:[professionalSkillInstanceCount: ProfessionalSkill.count()]
    }

    def show(ProfessionalSkill professionalSkillInstance) {
        respond professionalSkillInstance
    }

    def create() {
        respond new ProfessionalSkill(params)
    }

    @Secured('permitAll')
    def list()
    {
        if(params.lang == 'en')
        {
            def user = User.get(1)
            render user.professionalSkills as JSON
        }
        else if(params.lang == 'fr')
        {
            def user = User.get(2)
            render user.professionalSkills as JSON
        }
    }

    @Transactional
    def save(ProfessionalSkill professionalSkillInstance) {
        if (professionalSkillInstance == null) {
            notFound()
            return
        }

        if (professionalSkillInstance.hasErrors()) {
            respond professionalSkillInstance.errors, view:'create'
            return
        }

        professionalSkillInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'professionalSkill.label', default: 'ProfessionalSkill'), professionalSkillInstance.id])
                redirect professionalSkillInstance
            }
            '*' { respond professionalSkillInstance, [status: CREATED] }
        }
    }

    def edit(ProfessionalSkill professionalSkillInstance) {
        respond professionalSkillInstance
    }

    @Transactional
    def update(ProfessionalSkill professionalSkillInstance) {
        if (professionalSkillInstance == null) {
            notFound()
            return
        }

        if (professionalSkillInstance.hasErrors()) {
            respond professionalSkillInstance.errors, view:'edit'
            return
        }

        professionalSkillInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProfessionalSkill.label', default: 'ProfessionalSkill'), professionalSkillInstance.id])
                redirect professionalSkillInstance
            }
            '*'{ respond professionalSkillInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProfessionalSkill professionalSkillInstance) {

        if (professionalSkillInstance == null) {
            notFound()
            return
        }

        professionalSkillInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProfessionalSkill.label', default: 'ProfessionalSkill'), professionalSkillInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'professionalSkill.label', default: 'ProfessionalSkill'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
