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

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="workExperience.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${workExperienceInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['workExperience.id': workExperienceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="workExperience.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cv.User.list()}" optionKey="id" required="" value="${workExperienceInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workExperienceInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="workExperience.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="website" required="" value="${workExperienceInstance?.website}"/>

</div>

