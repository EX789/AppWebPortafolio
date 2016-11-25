<%-- 
    Document   : buscar_medico
    Created on : 17-oct-2016, 15:52:49
    Author     : raide
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Inst_de_objetos.Medico" %>
<%@page import="org.datacontract.schemas._2004._07.backend.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <c:choose>
            <c:when test="${empty sessionScope.persona}">
                <script>
                    window.location = "inicio_sesion.jsp"
                </script>
            </c:when>
            <c:when test="${empty listMedico && empty listCentro}">
                <script>
                    window.location = "/trunk/cbmed";
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
                            <a href="#" class="navbar-brand">Bienvenido <c:out value="${sessionScope.persona.getNombrePersona().getValue()}"/></a>
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
        <div class="container-fluid col-md-3 col-md-offset-5 col-sm-5 col-sm-offset-5 " style="margin-top: 100px; background-color: white; border-radius: 20px;
             ">
            <form action="/trunk/formMedCen" class="form" method="post">
                <div class="col-xs-12 col-sm-10">
                    <label for="Especialidad">Especialidad</label>
                    <select name="cbMedico" id="c" class="form-control">
                        <option selected="selected" value="0"></option>
                        <c:choose>
                            <c:when test="${not empty listMedico}">
                                <c:forEach items="${listMedico}" var="item">
                                    <option>${item}</option>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <option>No hay datos</option>
                            </c:otherwise>
                        </c:choose>
                    </select>
                </div>
                <br>
                <br>
                <br>
                <c:if test="${not empty listCentro}">
                    <c:forEach items="${listCentro}" var="item">
                        <div class="checkbox col-xs-offset-2">
                            <label id="chk">
                                <input name="chkCentro" type="checkbox" value="${item.getIdCetro()}">${item.getNombreCentro().getValue()}
                            </label>
                        </div>
                    </c:forEach>
                </c:if>
                <div class="form-group col-xs-offset-3">
                    <button class="btn btn-primary" style="width: 160px">Buscar</button>
                </div>
            </form>
        </div>
        <% if (request.getAttribute("mensaje") != null) { %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4 col-md-4 col-md-offset-4">
                    <div class="alert alert-warning">
                        <button class="close" data-dismiss="alert"><span>&times;</span></button>
                        <% out.println(request.getAttribute("mensaje")); %>
                    </div>
                </div>
            </div>
        </div>
        <% }%>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
                    $(".form").submit(function () {
                        if ($("option").val() != 0) {
                            alert("Seleccione una especialidad");
                            return false;
                        } else {
                            return true;
                        }
                    });
        </script>
    </body>
</html>
