
<%@ page import="cv.Interest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'interest.label', default: 'Interest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-interest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-interest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'interest.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="icon" title="${message(code: 'interest.icon.label', default: 'Icon')}" />
					
						<th><g:message code="interest.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${interestInstanceList}" status="i" var="interestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${interestInstance.id}">${fieldValue(bean: interestInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: interestInstance, field: "icon")}</td>
					
						<td>${fieldValue(bean: interestInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${interestInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
