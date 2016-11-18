<%-- 
    Document   : tabla_lista_medicos
    Created on : 17-oct-2016, 16:09:59
    Author     : raide
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.datacontract.schemas._2004._07.backend.*" %>
<!DOCTYPE html>
<html>
    <head>
        <c:choose>
            <c:when test="${empty sessionScope.persona}">
                <script>
                    window.location = "inicio_sesion.jsp"
                </script>
            </c:when>
        </c:choose>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
    </head>
    <body style="background-image: url('images/sky-blue-background-hd-desktop-wallpaper.jpg');">
        <div class="container">
            <h3 class="form-group">Lista de medicos</h3>
            <div class="table-responsive">
                    <table class="table table-bordered table-hover" style="background-color: white">
                        <thead>
                            <tr class="active">
                                <th>Nombre</th>
                                <th>Rut</th>
                                <th>Especialidad</th>
                                <th>Buscar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${not empty listaMedicos}">
                                <c:forEach items="${listaMedicos.getMedico()}" var="item">
                                <tr>
                                    <td>${item.getNombre().getValue()}</td>
                                    <td>${item.getRut().getValue()}</td>
                                    <td>${item.getEspecialidad().getValue()}</td>
                                    <td><a href="/AppWebPortafolio/buscar_agenda?nombre=${item.getNombre().getValue()}&id_medico=${item.getIdMedico()}&rut=${item.getRut().getValue()}&especialidad=${item.getEspecialidad().getValue()}" class="btn btn-primary">Buscar</a></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        </tbody>
                    </table>
            </div>
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
