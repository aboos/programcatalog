

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'program.label', default: 'Program')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        
        <style>
        .menuButton a.plist {
	    	color: #3cf;
		}
        </style>
        
    </head>
    <body>
        <div class="body">
        
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <p>click on a program to edit it or see episodes</p>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <!--<g:sortableColumn property="id" title="${message(code: 'program.id.label', default: 'Id')}" />-->
                        
                            <g:sortableColumn property="title" title="${message(code: 'program.title.label', default: 'Title')}" />
                        
                            <g:sortableColumn property="programkey" title="${message(code: 'program.programkey.label', default: 'Program Key')}" />
                        
                            <g:sortableColumn property="createdate" title="${message(code: 'program.createdate.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="createby" title="${message(code: 'program.createby.label', default: 'Created by')}" />
                        
                            <g:sortableColumn property="lastmoddate" title="${message(code: 'program.lastmoddate.label', default: 'Date Last Modified')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${programInstanceList}" status="i" var="programInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <!--<td><g:link action="show" id="${programInstance.id}">${fieldValue(bean: programInstance, field: "id")}</g:link></td>-->
                        
                            <td><g:link action="show" id="${programInstance.id}">${fieldValue(bean: programInstance, field: "title")}</g:link></td>
                        
                            <td>${fieldValue(bean: programInstance, field: "programkey")}</td>
                        
                            <td><g:formatDate date="${programInstance.createdate}" /></td>
                        
                            <td>${fieldValue(bean: programInstance, field: "createby")}</td>
                        
                            <td><g:formatDate date="${programInstance.lastmoddate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${programInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
