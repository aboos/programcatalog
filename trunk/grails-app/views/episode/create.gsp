


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        
        <style>
        .menuButton a.ecreate {
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
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${episodeInstance}">
            <div class="errors">
                <g:renderErrors bean="${episodeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="editionid"><g:message code="episode.editionid.label" default="Edition ID" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'editionid', 'errors')}">
                                    <g:textField name="editionid" value="${fieldValue(bean: episodeInstance, field: 'editionid')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title"><g:message code="episode.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'title', 'errors')}">
                                    <g:textArea name="title" cols="40" rows="5" value="${episodeInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="synopsis"><g:message code="episode.synopsis.label" default="Synopsis" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'synopsis', 'errors')}">
                                    <g:textArea name="synopsis" cols="40" rows="5" style="height:150px" value="${episodeInstance?.synopsis}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="timezone"><g:message code="episode.timezone.label" default="Timezone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'timezone', 'errors')}">
                                    <g:textField name="timezone" maxlength="24" value="${episodeInstance?.timezone}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="region"><g:message code="episode.region.label" default="Region" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'region', 'errors')}">
                                    <g:textField name="region" maxlength="24" value="${episodeInstance?.region}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="startdate"><g:message code="episode.startdate.label" default="Startdate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'startdate', 'errors')}">
                                    <g:datePicker name="startdate" precision="day" value="${episodeInstance?.startdate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enddate"><g:message code="episode.enddate.label" default="Enddate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'enddate', 'errors')}">
                                    <g:datePicker name="enddate" precision="day" value="${episodeInstance?.enddate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ratingid"><g:message code="episode.ratingid.label" default="Rating ID" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'ratingid', 'errors')}">
                                    <g:textField name="ratingid" value="${fieldValue(bean: episodeInstance, field: 'ratingid')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createdate"><g:message code="episode.createdate.label" default="Date Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'createdate', 'errors')}">
                                    <g:datePicker name="createdate" precision="day" value="${episodeInstance?.createdate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createby"><g:message code="episode.createby.label" default="Created by" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'createby', 'errors')}">
                                    <g:textField name="createby" maxlength="30" value="${episodeInstance?.createby}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastmoddate"><g:message code="episode.lastmoddate.label" default="Date Last Modified" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'lastmoddate', 'errors')}">
                                    <g:datePicker name="lastmoddate" precision="day" value="${episodeInstance?.lastmoddate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastmodby"><g:message code="episode.lastmodby.label" default="Last Modified by" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'lastmodby', 'errors')}">
                                    <g:textField name="lastmodby" maxlength="30" value="${episodeInstance?.lastmodby}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="program"><g:message code="episode.program.label" default="Program" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: episodeInstance, field: 'program', 'errors')}">
                                    <g:select name="program.id" from="${Program.list()}" optionKey="id" value="${episodeInstance?.program?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
