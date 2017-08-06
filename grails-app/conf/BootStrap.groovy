import cv.*
import grails.converters.JSON

class BootStrap {

    def init = { servletContext ->

        def adminRole = new SecRole('ROLE_ADMIN').save()
        def testUser = new SecUser('me', 'password').save()

        SecUserSecRole.create testUser, adminRole, true

        JSON.registerObjectMarshaller(WorkExperience){
            def returnArray = [:]
            returnArray['description'] = it.description
            returnArray['enddate'] = it.enddate
            returnArray['place'] = it.place
            returnArray['startdate'] = it.startdate
            returnArray['tasks'] = it.tasks
            returnArray['title'] = it.title
            returnArray['website'] = it.website

            return returnArray
        }

    }
    def destroy = {
    }
}
