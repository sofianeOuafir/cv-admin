
<%@ page import="cv.PersonalProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personalProject.label', default: 'PersonalProject')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personalProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personalProject" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'personalProject.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="startdate" title="${message(code: 'personalProject.startdate.label', default: 'Startdate')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'personalProject.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'personalProject.website.label', default: 'Website')}" />
					
						<g:sortableColumn property="technology" title="${message(code: 'personalProject.technology.label', default: 'Technology')}" />
					
						<th><g:message code="personalProject.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personalProjectInstanceList}" status="i" var="personalProjectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personalProjectInstance.id}">${fieldValue(bean: personalProjectInstance, field: "title")}</g:link></td>
					
						<td><g:formatDate date="${personalProjectInstance.startdate}" /></td>
					
						<td>${fieldValue(bean: personalProjectInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: personalProjectInstance, field: "website")}</td>
					
						<td>${fieldValue(bean: personalProjectInstance, field: "technology")}</td>
					
						<td>${fieldValue(bean: personalProjectInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personalProjectInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
