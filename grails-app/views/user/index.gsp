
<%@ page import="cv.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstname" title="${message(code: 'user.firstname.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="surname" title="${message(code: 'user.surname.label', default: 'Surname')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'user.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="jobDescription" title="${message(code: 'user.jobDescription.label', default: 'Job Description')}" />
					
						<g:sortableColumn property="github" title="${message(code: 'user.github.label', default: 'Github')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "firstname")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "surname")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "jobDescription")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "github")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
