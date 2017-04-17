package cv

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class EducationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Education.list(params), model:[educationInstanceCount: Education.count()]
    }

    def show(Education educationInstance) {
        respond educationInstance
    }

    def create() {
        respond new Education(params)
    }

    @Secured('permitAll')
    def list()
    {
        if(params.lang == 'en')
        {
            def user = User.get(1)
            render user.educations as JSON
        }
        else if(params.lang == 'fr')
        {
            def user = User.get(2)
            render user.educations as JSON
        }
    }

    @Transactional
    def save(Education educationInstance) {
        if (educationInstance == null) {
            notFound()
            return
        }

        if (educationInstance.hasErrors()) {
            respond educationInstance.errors, view:'create'
            return
        }

        educationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'education.label', default: 'Education'), educationInstance.id])
                redirect educationInstance
            }
            '*' { respond educationInstance, [status: CREATED] }
        }
    }

    def edit(Education educationInstance) {
        respond educationInstance
    }

    @Transactional
    def update(Education educationInstance) {
        if (educationInstance == null) {
            notFound()
            return
        }

        if (educationInstance.hasErrors()) {
            respond educationInstance.errors, view:'edit'
            return
        }

        educationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Education.label', default: 'Education'), educationInstance.id])
                redirect educationInstance
            }
            '*'{ respond educationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Education educationInstance) {

        if (educationInstance == null) {
            notFound()
            return
        }

        educationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Education.label', default: 'Education'), educationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'education.label', default: 'Education'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
