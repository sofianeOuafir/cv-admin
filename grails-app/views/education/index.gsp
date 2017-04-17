
<%@ page import="cv.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-education" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'education.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="startdate" title="${message(code: 'education.startdate.label', default: 'Startdate')}" />
					
						<g:sortableColumn property="enddate" title="${message(code: 'education.enddate.label', default: 'Enddate')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'education.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="place" title="${message(code: 'education.place.label', default: 'Place')}" />
					
						<th><g:message code="education.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${educationInstanceList}" status="i" var="educationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${educationInstance.id}">${fieldValue(bean: educationInstance, field: "title")}</g:link></td>
					
						<td><g:formatDate date="${educationInstance.startdate}" /></td>
					
						<td><g:formatDate date="${educationInstance.enddate}" /></td>
					
						<td>${fieldValue(bean: educationInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "place")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${educationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
