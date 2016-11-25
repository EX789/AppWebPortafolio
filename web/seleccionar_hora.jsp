<%-- 
    Document   : seleccionar_hora
    Created on : 17-oct-2016, 16:32:04
    Author     : raide
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        </c:choose>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap-datepicker3.standalone.css">
        <script src="js/bootstrap-datepicker.min.js" charset="UTF-8">
        </script>
        <style type="text/css">
            body{padding-top: 30px;}
        </style>
    </head>
    <body style="background-image: url('images/sky-blue-background-hd-desktop-wallpaper.jpg');">
        <div class="container">
            <section class="main row" style="background-color: white">
                <article class="col-xs-12 col-sm-8 col-md-9 form-group">
                    <div>
                        <h3>Nombre <small><c:out value="${nombre}"/></small></h3>
                        <h3>Especialidad <small><c:out value="${especialidad}"/></small></h3>
                        <h3>Centro de atencion <small>Clinica Israelita</small></h3>
                        <input id="id_input" type="hidden" name="id_medico" value="<c:out value="${id}"/>" readonly="readonly" />
                    </div>
                </article>
                <div class="col-xs-12 col-sm-4 col-md-3 form-group">
                    <div id="datepicker" ></div>
                    <input type="hidden" id="my_hidden_input">
                </div>
            </section>
        </div>
        <br>
        <div class="container">
            <div class="table-responsive">
                    <table class="table table-bordered table-hover" style="background-color: white">
                        <thead>
                            <tr class="active">
                                <th>Horas</th>
                                <th>Minutos</th>
                                <th>Descripcion</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
            </div>
        </div>
        <script>
            $('#datepicker').datepicker({
                language: 'es',
                format: 'dd/mm/yyyy'
            });
            $('#datepicker').on("changeDate", function () {
                $(".table td").remove();
                $("input[name='hidden_id_medico']").remove();
                $('#my_hidden_input').val($('#datepicker').datepicker('getFormattedDate'));
                var elemento = document.getElementById('my_hidden_input').value;
                var id = document.getElementById('id_input').value;
                $.ajax({
                    type: 'POST',
                    url: "/trunk/Obtener_lista_horas",
                    data: {fecha: elemento, id_medico: id},
                    dataType: 'json',
                    cache: false,
                    success: function (data, textStatus, jqXHR) {
                        $.each(data, function (indice, estado) {
                            if (estado.Descripcion == "Disponible") {
                                $(".table").append($("<tr>").append(
                                        "<td>" + estado.Horas + "</td>" +
                                        "<td>" + estado.Minutos + "</td>" +
                                        "<td>" + estado.Descripcion + "</td>" +
                                        "<td>" + '<a class="btn btn-primary" href="/trunk/Registrar_reserva?id_medico='+ estado.iid_agenda_medico +'">Reservar</a>' +"</td>"));
                            } else {
                                $(".table").append($("<tr>").append(
                                        "<td>" + estado.Horas + "</td>" +
                                        "<td>" + estado.Minutos + "</td>" +
                                        "<td>" + estado.Descripcion + "</td>" +
                                        "<td>" + '<button class="btn btn-primary" value="Reservar" name="btnReserva" disabled>' + "Reservar" +'</button>' + "</td>"));
                            }
                        });
                    }
                });
            });
        </script>
    </body>
</html>
