
<%@ page import="cv.WorkExperience" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'workExperience.label', default: 'WorkExperience')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-workExperience" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-workExperience" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list workExperience">
			
				<g:if test="${workExperienceInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="workExperience.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${workExperienceInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${workExperienceInstance?.startdate}">
				<li class="fieldcontain">
					<span id="startdate-label" class="property-label"><g:message code="workExperience.startdate.label" default="Startdate" /></span>
					
						<span class="property-value" aria-labelledby="startdate-label"><g:formatDate date="${workExperienceInstance?.startdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${workExperienceInstance?.enddate}">
				<li class="fieldcontain">
					<span id="enddate-label" class="property-label"><g:message code="workExperience.enddate.label" default="Enddate" /></span>
					
						<span class="property-value" aria-labelledby="enddate-label"><g:formatDate date="${workExperienceInstance?.enddate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${workExperienceInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="workExperience.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${workExperienceInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${workExperienceInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="workExperience.place.label" default="Place" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${workExperienceInstance}" field="place"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${workExperienceInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="workExperience.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${workExperienceInstance?.user?.id}">${workExperienceInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:workExperienceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${workExperienceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
