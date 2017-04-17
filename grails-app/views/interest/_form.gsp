<%@ page import="cv.Interest" %>



<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="interest.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${interestInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'icon', 'error')} required">
	<label for="icon">
		<g:message code="interest.icon.label" default="Icon" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="icon" required="" value="${interestInstance?.icon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: interestInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="interest.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cv.User.list()}" optionKey="id" required="" value="${interestInstance?.user?.id}" class="many-to-one"/>

</div>

