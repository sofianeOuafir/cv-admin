
<%@ page import="cv.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-education" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list education">
			
				<g:if test="${educationInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="education.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${educationInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.startdate}">
				<li class="fieldcontain">
					<span id="startdate-label" class="property-label"><g:message code="education.startdate.label" default="Startdate" /></span>
					
						<span class="property-value" aria-labelledby="startdate-label"><g:formatDate date="${educationInstance?.startdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.enddate}">
				<li class="fieldcontain">
					<span id="enddate-label" class="property-label"><g:message code="education.enddate.label" default="Enddate" /></span>
					
						<span class="property-value" aria-labelledby="enddate-label"><g:formatDate date="${educationInstance?.enddate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="education.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${educationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="education.place.label" default="Place" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${educationInstance}" field="place"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="education.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${educationInstance?.user?.id}">${educationInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:educationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${educationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
