
<%@ page import="cv.PersonalProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personalProject.label', default: 'PersonalProject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personalProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personalProject" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personalProject">
			
				<g:if test="${personalProjectInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="personalProject.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${personalProjectInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personalProjectInstance?.startdate}">
				<li class="fieldcontain">
					<span id="startdate-label" class="property-label"><g:message code="personalProject.startdate.label" default="Startdate" /></span>
					
						<span class="property-value" aria-labelledby="startdate-label"><g:formatDate date="${personalProjectInstance?.startdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personalProjectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="personalProject.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${personalProjectInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personalProjectInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="personalProject.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${personalProjectInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personalProjectInstance?.technology}">
				<li class="fieldcontain">
					<span id="technology-label" class="property-label"><g:message code="personalProject.technology.label" default="Technology" /></span>
					
						<span class="property-value" aria-labelledby="technology-label"><g:fieldValue bean="${personalProjectInstance}" field="technology"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personalProjectInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="personalProject.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${personalProjectInstance?.user?.id}">${personalProjectInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personalProjectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personalProjectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
