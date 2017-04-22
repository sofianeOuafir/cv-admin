<%@ page import="cv.PersonalProject" %>



<div class="fieldcontain ${hasErrors(bean: personalProjectInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="personalProject.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${personalProjectInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personalProjectInstance, field: 'startdate', 'error')} required">
	<label for="startdate">
		<g:message code="personalProject.startdate.label" default="Startdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startdate" precision="day"  value="${personalProjectInstance?.startdate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: personalProjectInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="personalProject.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${personalProjectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personalProjectInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="personalProject.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="website" required="" value="${personalProjectInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personalProjectInstance, field: 'technology', 'error')} required">
	<label for="technology">
		<g:message code="personalProject.technology.label" default="Technology" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="technology" required="" value="${personalProjectInstance?.technology}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personalProjectInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="personalProject.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cv.User.list()}" optionKey="id" required="" value="${personalProjectInstance?.user?.id}" class="many-to-one"/>

</div>

