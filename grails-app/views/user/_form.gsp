<%@ page import="cv.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="user.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" required="" value="${userInstance?.firstname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'surname', 'error')} required">
	<label for="surname">
		<g:message code="user.surname.label" default="Surname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="surname" required="" value="${userInstance?.surname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="user.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${userInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'jobDescription', 'error')} required">
	<label for="jobDescription">
		<g:message code="user.jobDescription.label" default="Job Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="jobDescription" required="" value="${userInstance?.jobDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'github', 'error')} required">
	<label for="github">
		<g:message code="user.github.label" default="Github" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="github" required="" value="${userInstance?.github}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'educations', 'error')} ">
	<label for="educations">
		<g:message code="user.educations.label" default="Educations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.educations?}" var="e">
    <li><g:link controller="education" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="education" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'education.label', default: 'Education')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'interests', 'error')} ">
	<label for="interests">
		<g:message code="user.interests.label" default="Interests" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.interests?}" var="i">
    <li><g:link controller="interest" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="interest" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'interest.label', default: 'Interest')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="user.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${userInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'professionalSkills', 'error')} ">
	<label for="professionalSkills">
		<g:message code="user.professionalSkills.label" default="Professional Skills" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.professionalSkills?}" var="p">
    <li><g:link controller="professionalSkill" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="professionalSkill" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'professionalSkill.label', default: 'ProfessionalSkill')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'workExperiences', 'error')} ">
	<label for="workExperiences">
		<g:message code="user.workExperiences.label" default="Work Experiences" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.workExperiences?}" var="w">
    <li><g:link controller="workExperience" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="workExperience" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'workExperience.label', default: 'WorkExperience')])}</g:link>
</li>
</ul>


</div>

