


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'program.label', default: 'Program')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        
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
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${programInstance}">
            <div class="errors">
                <g:renderErrors bean="${programInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${programInstance?.id}" />
                <g:hiddenField name="version" value="${programInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="program.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'title', 'errors')}">
                                    <g:textArea name="title" cols="40" rows="5" value="${programInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="programkey"><g:message code="program.programkey.label" default="Program Key" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'programkey', 'errors')}">
                                    <g:textField name="programkey" maxlength="25" value="${programInstance?.programkey}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="createdate"><g:message code="program.createdate.label" default="Date Created" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'createdate', 'errors')}">
                                    <g:datePicker name="createdate" years="${Calendar.instance.get(Calendar.YEAR)+3..1985}" precision="day" value="${programInstance?.createdate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="createby"><g:message code="program.createby.label" default="Created by" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'createby', 'errors')}">
                                    <g:textField name="createby" maxlength="30" value="${programInstance?.createby}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastmoddate"><g:message code="program.lastmoddate.label" default="Date Last Modified" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'lastmoddate', 'errors')}">
                                    <g:datePicker name="lastmoddate" years="${Calendar.instance.get(Calendar.YEAR)+3..1985}" precision="day" value="${programInstance?.lastmoddate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="lastmodby"><g:message code="program.lastmodby.label" default="Last Modified by" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'lastmodby', 'errors')}">
                                    <g:textField name="lastmodby" maxlength="30" value="${programInstance?.lastmodby}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="episode"><g:message code="program.episode.label" default="Episode" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programInstance, field: 'episode', 'errors')}">
                                    
<ul>
<g:each in="${programInstance?.episode?}" var="e">
    <li><g:link controller="episode" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="episode" action="create" params="['program.id': programInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'episode.label', default: 'Episode')])}</g:link>

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
