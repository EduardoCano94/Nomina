<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Menú Principal - Sistema de Gestión</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 100px; }
        a { display: block; margin: 20px; font-size: 20px; text-decoration: none; color: #007BFF; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>

    <h1>Bienvenido al Sistema de Gestión</h1>

    <h2>Ir a:</h2>
    <%
    HttpSession miSesion = request.getSession(false);
    if (miSesion == null || miSesion.getAttribute("usuarioLogueado") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
    <a href="UsuarioJsp.jsp">Gestión de Usuarios</a> 
    <a href="EmpleadosJsp.jsp">Gestión de Empleados</a>
     

</body>
</html>
