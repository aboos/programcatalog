

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        
        <style>
        .menuButton a.elist {
	    	color: #3cf;
		}
		a {
			color:#fff;
		}
		
    	</style>
    
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                      <!--  <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "id")}</td>
                            
                        </tr> -->
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.editionid.label" default="Edition ID" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "editionid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.title.label" default="Title" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "title")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.synopsis.label" default="Synopsis" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "synopsis")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.timezone.label" default="Timezone" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "timezone")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.region.label" default="Region" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "region")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.startdate.label" default="Startdate" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${episodeInstance?.startdate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.enddate.label" default="Enddate" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${episodeInstance?.enddate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.ratingid.label" default="Rating ID" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "ratingid")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.createdate.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${episodeInstance?.createdate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.createby.label" default="Created by" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "createby")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.lastmoddate.label" default="Date Last Modified" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${episodeInstance?.lastmoddate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.lastmodby.label" default="Last Modified by" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: episodeInstance, field: "lastmodby")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="episode.program.label" default="Program" /></td>
                            
                            <td valign="top" class="value"><g:link controller="program" action="show" id="${episodeInstance?.program?.id}">${episodeInstance?.program?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${episodeInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
