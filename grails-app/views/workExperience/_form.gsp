<%@ page import="cv.WorkExperience" %>



<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="workExperience.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${workExperienceInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'startdate', 'error')} required">
	<label for="startdate">
		<g:message code="workExperience.startdate.label" default="Startdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startdate" precision="day"  value="${workExperienceInstance?.startdate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'enddate', 'error')} required">
	<label for="enddate">
		<g:message code="workExperience.enddate.label" default="Enddate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="enddate" precision="day"  value="${workExperienceInstance?.enddate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="workExperience.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${workExperienceInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'place', 'error')} required">
	<label for="place">
		<g:message code="workExperience.place.label" default="Place" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="place" required="" value="${workExperienceInstance?.place}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="workExperience.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cv.User.list()}" optionKey="id" required="" value="${workExperienceInstance?.user?.id}" class="many-to-one"/>

</div>

