

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        
        <style>
        .menuButton a.elist {
	    	text-decoration: underline;
	    	color:yellow;
		}
    	</style>
    
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <p>Click on episode to edit. Click on column headers to sort by that attribute.</p>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <!--<g:sortableColumn property="id" title="${message(code: 'episode.id.label', default: 'Id')}" />-->
                        
                            <!--<g:sortableColumn property="editionid" title="${message(code: 'episode.editionid.label', default: 'Editionid')}" />-->
                        
                            <g:sortableColumn property="title" title="${message(code: 'episode.title.label', default: 'Title')}" />
                            
                            <g:sortableColumn property="program" title="${message(code: 'episode.region.label', default: 'Program')}" />
                        
                            <g:sortableColumn property="synopsis" title="${message(code: 'episode.synopsis.label', default: 'Synopsis')}" />
                        
                            <g:sortableColumn property="timezone" title="${message(code: 'episode.timezone.label', default: 'Timezone')}" />
                        
                            <g:sortableColumn property="region" title="${message(code: 'episode.region.label', default: 'Region')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${episodeInstanceList}" status="i" var="episodeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <!-- <td><g:link action="show" id="${episodeInstance.id}">${fieldValue(bean: episodeInstance, field: "id")}</g:link></td> -->
                        
                            <!--<td>${fieldValue(bean: episodeInstance, field: "editionid")}</td>-->
                        
                            <td><g:link action="show" id="${episodeInstance.id}">${fieldValue(bean: episodeInstance, field: "title")}</g:link></td>
                            
                            <td><g:link controller="program" action="show" id="${episodeInstance?.program?.id}">${fieldValue(bean: episodeInstance, field: "program")}</g:link></td>
                        
                        	<g:if test="${episodeInstance.synopsis.length() > 180}"><g:set var = "syn" value="${episodeInstance.synopsis.substring(0,179)}..."/></g:if>
                            <g:else><g:set var="syn" value="${episodeInstance.synopsis}"/></g:else>
                            <td style="width:400px">${syn}</td>
                        
                            <td>${fieldValue(bean: episodeInstance, field: "timezone")}</td>
                        
                            <td>${fieldValue(bean: episodeInstance, field: "region")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${episodeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
