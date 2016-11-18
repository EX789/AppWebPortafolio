<%-- 
    Document   : inicio_sesion
    Created on : 09-sep-2016, 20:21:37
    Author     : raide
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo_inicio_sesion.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrapper">
            <form name="login-form" class="login-form" action="/AppWebPortafolio/Inicio_sesion" method="post">

                <div class="header">
                    <h1>Login Form</h1>
                    <span>Fill out the form below to login to my super awesome imaginary control panel.</span>
                </div>

                <div class="content">
                    <input name="username" type="text" class="input username" placeholder="Username" />
                    <div class="user-icon"></div>
                    <input name="password" type="password" class="input password" placeholder="Password" />
                    <div class="pass-icon"></div>		
                </div>

                <div class="footer">
                    <input type="submit" name="submit" value="Login" class="button" />
                    <input type="button" name="submit" value="Register" class="register"/>
                </div>
            </form>
        </div>
        <% if (request.getAttribute("validacion") != null) { %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4 col-md-4 col-md-offset-4">
                    <div class="alert alert-warning">
                        <button class="close" data-dismiss="alert"><span>&times;</span></button>
                        <% out.println(request.getAttribute("validacion")); %>
                    </div>
                </div>
            </div>
        </div>
        <% }%>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script>
            $(".register").click(function (){
                window.location="registrar_usuario.html";
            });
        </script>
    </body>
</html>