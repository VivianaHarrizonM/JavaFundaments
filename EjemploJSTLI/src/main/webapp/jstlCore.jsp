<%-- 
    Document   : jstlCore
    Created on : 3 jun 2026, 19:43:29
    Author     : viviana-harrizon
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTLS Core</title>
    </head>
    <body>
        <h1>JSTLS Core</h1>
        <!--Manipulacion de variables-->
        <c:set var="nombre" value="Ernesto"></c:set>
            Variable nombre: <c:out value="${nombre}"/>
        <br/>
        
        <!----- Variable con código HTML------>
        <c:out value="<h4>Hola</h4>"escapeXml="false"/>
        
        <!--- Código consicional con if --->
        <c:set var="bandera" value="true"/>
        <c:if test="${bandera}">
            La bandera es verdadera
        </c:if>
         <br/>
         
         <!----- Estructura switch con c:choose------>
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    Opción 1 seleccionada
                </c:when>
                <c:when test="${param.opcion == 2}">
                    Opción 2 seleccionada
                </c:when>
                <c:otherwise>
                    Opción desconosida: ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
                    
        <!---Iteración de un arreglo--->
        <%
            String[] nombres = {"Claudia", "Pedro", "Juan"};
            request.setAttribute("nombres", nombres);
        %>
        
        <ul>
            <c:forEach var="persona" items="${nombres}">
                <li>${persona}</li>
            </c:forEach>
        </ul>
        </br>
        <a href="index.jsp">Regresar al inicio</a>
    </body>
    </html>
    
    