<%-- 
    Document   : despleglarVariables
    Created on : 15 jul 2026, 11:53:53
    Author     : viviana-harrizon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Despliegue de Variables</title>
    </head>
    <body>
        <h1>Despliegue de Variables</h1>
        Variable en alcace request: ${mensaje}
        <br/><br/>
        Variable en alcance sesion:
        <br/>
        Rectangulo:
        Base: ${rectangulo.base}
        <br/>
        Altura: ${rectangulo.altura}
        <br/>
        Area: ${rectangulo.area}
        <br/><br/>
        <a href="${pageContext.request.contextPath}/index.jsp">
            Regresar al inicio
        </a>    
    </body>
</html>
