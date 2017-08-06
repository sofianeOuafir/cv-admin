<%@ page import="cv.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${taskInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'workExperience', 'error')} required">
	<label for="workExperience">
		<g:message code="task.workExperience.label" default="Work Experience" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="workExperience" name="workExperience.id" from="${cv.WorkExperience.list()}" optionKey="id" required="" value="${taskInstance?.workExperience?.id}" class="many-to-one"/>

</div>

