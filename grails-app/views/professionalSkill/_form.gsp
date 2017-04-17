<%@ page import="cv.ProfessionalSkill" %>



<div class="fieldcontain ${hasErrors(bean: professionalSkillInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="professionalSkill.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${professionalSkillInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: professionalSkillInstance, field: 'achievment', 'error')} required">
	<label for="achievment">
		<g:message code="professionalSkill.achievment.label" default="Achievment" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="achievment" type="number" value="${professionalSkillInstance.achievment}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: professionalSkillInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="professionalSkill.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cv.User.list()}" optionKey="id" required="" value="${professionalSkillInstance?.user?.id}" class="many-to-one"/>

</div>

