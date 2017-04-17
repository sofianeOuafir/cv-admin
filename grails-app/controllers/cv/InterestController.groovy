package cv



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class InterestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Interest.list(params), model:[interestInstanceCount: Interest.count()]
    }

    def show(Interest interestInstance) {
        respond interestInstance
    }

    def create() {
        respond new Interest(params)
    }

    @Secured('permitAll')
    def list()
    {
        if(params.lang == 'en')
        {
            def user = User.get(1)
            render user.interests as JSON
        }
        else if(params.lang == 'fr')
        {
            def user = User.get(2)
            render user.interests as JSON
        }
    }

    @Transactional
    def save(Interest interestInstance) {
        if (interestInstance == null) {
            notFound()
            return
        }

        if (interestInstance.hasErrors()) {
            respond interestInstance.errors, view:'create'
            return
        }

        interestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'interest.label', default: 'Interest'), interestInstance.id])
                redirect interestInstance
            }
            '*' { respond interestInstance, [status: CREATED] }
        }
    }

    def edit(Interest interestInstance) {
        respond interestInstance
    }

    @Transactional
    def update(Interest interestInstance) {
        if (interestInstance == null) {
            notFound()
            return
        }

        if (interestInstance.hasErrors()) {
            respond interestInstance.errors, view:'edit'
            return
        }

        interestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Interest.label', default: 'Interest'), interestInstance.id])
                redirect interestInstance
            }
            '*'{ respond interestInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Interest interestInstance) {

        if (interestInstance == null) {
            notFound()
            return
        }

        interestInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Interest.label', default: 'Interest'), interestInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
