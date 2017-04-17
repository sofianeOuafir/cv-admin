package cv



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class WorkExperienceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond WorkExperience.list(params), model:[workExperienceInstanceCount: WorkExperience.count()]
    }

    def show(WorkExperience workExperienceInstance) {
        respond workExperienceInstance
    }

    def create() {
        respond new WorkExperience(params)
    }

    @Secured('permitAll')
    def list()
    {
        if(params.lang == 'en')
        {
            def user = User.get(1)
            render user.workExperiences as JSON
        }
        else if(params.lang == 'fr')
        {
            def user = User.get(2)
            render user.workExperiences as JSON
        }
    }

    @Transactional
    def save(WorkExperience workExperienceInstance) {
        if (workExperienceInstance == null) {
            notFound()
            return
        }

        if (workExperienceInstance.hasErrors()) {
            respond workExperienceInstance.errors, view:'create'
            return
        }

        workExperienceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'workExperience.label', default: 'WorkExperience'), workExperienceInstance.id])
                redirect workExperienceInstance
            }
            '*' { respond workExperienceInstance, [status: CREATED] }
        }
    }

    def edit(WorkExperience workExperienceInstance) {
        respond workExperienceInstance
    }

    @Transactional
    def update(WorkExperience workExperienceInstance) {
        if (workExperienceInstance == null) {
            notFound()
            return
        }

        if (workExperienceInstance.hasErrors()) {
            respond workExperienceInstance.errors, view:'edit'
            return
        }

        workExperienceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'WorkExperience.label', default: 'WorkExperience'), workExperienceInstance.id])
                redirect workExperienceInstance
            }
            '*'{ respond workExperienceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(WorkExperience workExperienceInstance) {

        if (workExperienceInstance == null) {
            notFound()
            return
        }

        workExperienceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'WorkExperience.label', default: 'WorkExperience'), workExperienceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'workExperience.label', default: 'WorkExperience'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
