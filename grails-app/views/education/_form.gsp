<%@ page import="cv.Education" %>



<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="education.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${educationInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'startdate', 'error')} required">
	<label for="startdate">
		<g:message code="education.startdate.label" default="Startdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startdate" precision="day"  value="${educationInstance?.startdate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'enddate', 'error')} required">
	<label for="enddate">
		<g:message code="education.enddate.label" default="Enddate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="enddate" precision="day"  value="${educationInstance?.enddate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="education.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${educationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'place', 'error')} required">
	<label for="place">
		<g:message code="education.place.label" default="Place" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="place" required="" value="${educationInstance?.place}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="education.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cv.User.list()}" optionKey="id" required="" value="${educationInstance?.user?.id}" class="many-to-one"/>

</div>

