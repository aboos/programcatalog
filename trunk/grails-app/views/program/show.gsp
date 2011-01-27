

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'program.label', default: 'Program')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        
        <style>
        .menuButton a.plist {
	    	text-decoration: underline;
	    	color:yellow;
	    	
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
                    
                        <!--<tr class="prop">
                            <td valign="top" class="name"><g:message code="program.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: programInstance, field: "id")}</td>
                            
                        </tr>-->
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.title.label" default="Title" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: programInstance, field: "title")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.programkey.label" default="Program Key" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: programInstance, field: "programkey")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.createdate.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${programInstance?.createdate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.createby.label" default="Created by" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: programInstance, field: "createby")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.lastmoddate.label" default="Date Last Modified" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${programInstance?.lastmoddate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.lastmodby.label" default="Last Modified by" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: programInstance, field: "lastmodby")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="program.episode.label" default="Episode" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${programInstance.episode}" var="e">
                                    <li style="color:#fff"><g:link class="show" controller="episode" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${programInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
