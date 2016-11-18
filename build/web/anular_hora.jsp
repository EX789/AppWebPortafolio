<%-- 
    Document   : anular_hora
    Created on : 17-oct-2016, 16:46:16
    Author     : raide
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.datacontract.schemas._2004._07.backend.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <c:choose>
            <c:when test="${empty sessionScope.persona}">
                <script>
                    window.location = "inicio_sesion.jsp";
                </script>
            </c:when>
            <c:when test="${empty listaReserva}">
                <script>
                    window.location = "/AppWebPortafolio/listaReserva";
                </script>
            </c:when>
        </c:choose>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <style type="text/css">
            body{padding-top: 80px;}
        </style>
    </head>
    <body style="background-image: url('images/sky-blue-background-hd-desktop-wallpaper.jpg');">
        <div class="container" >
            <header>
                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-1">
                                <span class="sr-only">Menu</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="#" class="navbar-brand">Bienvenido</a>
                        </div>
                        <div class="collapse navbar-collapse" id="navbar-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="buscar_medico.jsp">Ingresar hora</a></li>
                                <li class="active"><a href="anular_hora.jsp">Anular hora</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
        </div>

        <div class="container">
            <h3 class="form-group">Lista de medicos</h3>
            <div class="table-responsive">
                <table class="table table-bordered table-hover" style="background-color: white">
                    <thead>
                        <tr class="active">
                            <th>Rut</th>
                            <th>Estado reserva</th>
                            <th>Hora</th>
                            <th>Minuto</th>
                            <td>Accion</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listaReserva.getReserva()}" var="item">
                            <tr>
                                <td>${item.getRutPersona().getValue()}</td>
                                <c:if test="${item.getEstadoReserva() == 1}">
                                    <td>Resevado</td>
                                </c:if>
                                <c:choose>
                                    <c:when test="${item.getHora()>=0 && item.getHora()<=9 || item.getMinuto()>=0 && item.getMinuto()<=9}">
                                        <td>${"0"+item.getHora().toString()}</td>
                                        <td>${"0"+item.getMinuto().toString()}</td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>${item.getHora().toString()}</td>
                                        <td>${item.getMinuto().toString()}</td>
                                    </c:otherwise>
                                </c:choose>
                                <td><a href="/AppWebPortafolio/BorrarReserva?id_medico=${item.getIdAgenMed()}&rut=${item.getRutPersona().getValue()}" class="btn btn-primary">Eliminar</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
