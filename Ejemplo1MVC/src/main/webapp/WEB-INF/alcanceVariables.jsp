<%-- 
    Document   : alcanceVariables
    Created on : 15 jul 2026, 13:49:36
    Author     : viviana-harrizon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alcance de Variables</title>
    </head>
    <body>
        <h1>Alcance de variables</h1>
    
        Variable request:
        Base: ${rectanguloRequest.base}
        Altura: ${rectanguloRequest.altura}
        Area: ${rectanguloRequest.area}
        <br/><br/>
        Variable Sesion:
        Base: ${rectanguloSession.base}
        Altura: ${rectanguloSession.altura}
        Area: ${rectanguloSession.area}
         <br/><br/>
        Variable application:
        Base: ${rectanguloApplication.base}
        Altura: ${rectanguloApplication.altura}
        Area: ${rectanguloApplication.area}

        <br/><br/>
        <a href="${pageContext.request.contextPath}/index.jsp">
            Regresar al inicio
        </a>
    </body>
</html>
