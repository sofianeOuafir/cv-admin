
<%@ page import="cv.ProfessionalSkill" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professionalSkill.label', default: 'ProfessionalSkill')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-professionalSkill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-professionalSkill" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list professionalSkill">
			
				<g:if test="${professionalSkillInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="professionalSkill.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${professionalSkillInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professionalSkillInstance?.achievment}">
				<li class="fieldcontain">
					<span id="achievment-label" class="property-label"><g:message code="professionalSkill.achievment.label" default="Achievment" /></span>
					
						<span class="property-value" aria-labelledby="achievment-label"><g:fieldValue bean="${professionalSkillInstance}" field="achievment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professionalSkillInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="professionalSkill.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${professionalSkillInstance?.user?.id}">${professionalSkillInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:professionalSkillInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${professionalSkillInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
