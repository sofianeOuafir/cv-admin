
<%@ page import="cv.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.firstname}">
				<li class="fieldcontain">
					<span id="firstname-label" class="property-label"><g:message code="user.firstname.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${userInstance}" field="firstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.surname}">
				<li class="fieldcontain">
					<span id="surname-label" class="property-label"><g:message code="user.surname.label" default="Surname" /></span>
					
						<span class="property-value" aria-labelledby="surname-label"><g:fieldValue bean="${userInstance}" field="surname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="user.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${userInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.jobDescription}">
				<li class="fieldcontain">
					<span id="jobDescription-label" class="property-label"><g:message code="user.jobDescription.label" default="Job Description" /></span>
					
						<span class="property-value" aria-labelledby="jobDescription-label"><g:fieldValue bean="${userInstance}" field="jobDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.github}">
				<li class="fieldcontain">
					<span id="github-label" class="property-label"><g:message code="user.github.label" default="Github" /></span>
					
						<span class="property-value" aria-labelledby="github-label"><g:fieldValue bean="${userInstance}" field="github"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.educations}">
				<li class="fieldcontain">
					<span id="educations-label" class="property-label"><g:message code="user.educations.label" default="Educations" /></span>
					
						<g:each in="${userInstance.educations}" var="e">
						<span class="property-value" aria-labelledby="educations-label"><g:link controller="education" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.interests}">
				<li class="fieldcontain">
					<span id="interests-label" class="property-label"><g:message code="user.interests.label" default="Interests" /></span>
					
						<g:each in="${userInstance.interests}" var="i">
						<span class="property-value" aria-labelledby="interests-label"><g:link controller="interest" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.personalProjects}">
				<li class="fieldcontain">
					<span id="personalProjects-label" class="property-label"><g:message code="user.personalProjects.label" default="Personal Projects" /></span>
					
						<g:each in="${userInstance.personalProjects}" var="p">
						<span class="property-value" aria-labelledby="personalProjects-label"><g:link controller="personalProject" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="user.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${userInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.professionalSkills}">
				<li class="fieldcontain">
					<span id="professionalSkills-label" class="property-label"><g:message code="user.professionalSkills.label" default="Professional Skills" /></span>
					
						<g:each in="${userInstance.professionalSkills}" var="p">
						<span class="property-value" aria-labelledby="professionalSkills-label"><g:link controller="professionalSkill" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.workExperiences}">
				<li class="fieldcontain">
					<span id="workExperiences-label" class="property-label"><g:message code="user.workExperiences.label" default="Work Experiences" /></span>
					
						<g:each in="${userInstance.workExperiences}" var="w">
						<span class="property-value" aria-labelledby="workExperiences-label"><g:link controller="workExperience" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
