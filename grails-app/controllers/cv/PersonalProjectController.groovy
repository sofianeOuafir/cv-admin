package cv



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class PersonalProjectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersonalProject.list(params), model:[personalProjectInstanceCount: PersonalProject.count()]
    }

    def show(PersonalProject personalProjectInstance) {
        respond personalProjectInstance
    }

    def create() {
        respond new PersonalProject(params)
    }

    @Secured('permitAll')
    def list()
    {
        if(params.lang == 'en')
        {
            def user = User.get(1)
            render user.personalProjects as JSON
        }
        else if(params.lang == 'fr')
        {
            def user = User.get(2)
            render user.personalProjects as JSON
        }
    }

    @Transactional
    def save(PersonalProject personalProjectInstance) {
        if (personalProjectInstance == null) {
            notFound()
            return
        }

        if (personalProjectInstance.hasErrors()) {
            respond personalProjectInstance.errors, view:'create'
            return
        }

        personalProjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personalProject.label', default: 'PersonalProject'), personalProjectInstance.id])
                redirect personalProjectInstance
            }
            '*' { respond personalProjectInstance, [status: CREATED] }
        }
    }

    def edit(PersonalProject personalProjectInstance) {
        respond personalProjectInstance
    }

    @Transactional
    def update(PersonalProject personalProjectInstance) {
        if (personalProjectInstance == null) {
            notFound()
            return
        }

        if (personalProjectInstance.hasErrors()) {
            respond personalProjectInstance.errors, view:'edit'
            return
        }

        personalProjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersonalProject.label', default: 'PersonalProject'), personalProjectInstance.id])
                redirect personalProjectInstance
            }
            '*'{ respond personalProjectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersonalProject personalProjectInstance) {

        if (personalProjectInstance == null) {
            notFound()
            return
        }

        personalProjectInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersonalProject.label', default: 'PersonalProject'), personalProjectInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personalProject.label', default: 'PersonalProject'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
