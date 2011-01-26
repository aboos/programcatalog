<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>    
		<div class="center">		
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="eolLogo"><a href="${createLink(uri: '/')}"><img width="100%"src="${resource(dir:'images',file:'banner.jpg')}" alt="EOL" border="0" /></a></div>
        
            <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><a class="plist" href="${createLink(uri: '/program/list') }"><g:message code="Program List"/></a></span>
            <span class="menuButton"><a class="elist" href="${createLink(uri: '/episode/list') }"><g:message code="Episode List"/></a></span>
            <span class="menuButton"><a class="pcreate" href="${createLink(uri: '/program/create')}"><g:message code="New Program"/></a></span>
            <span class="menuButton"><a class="ecreate" href="${createLink(uri: '/episode/create')}"><g:message code="New Episode"/></a></span>
          <div style="margin-left:600px;margin-top:-16px"><g:form url='[controller: "searchable", action: "index"]' id="searchableForm" name="searchableForm" method="get">
        		<g:textField name="q" value="${params.q}" size="30"/> <input  type="submit" value="Search" />
    		</g:form></div>
		</div>
		
        <g:layoutBody /> 
        
        
        </div>
        
        
    </body>
</html>