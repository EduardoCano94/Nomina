<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Crear Usuario</title>
</head>
<body>

    <h1>Crear Nuevo Usuario</h1>

    <form action="UsuarioServlet" method="POST">
        <label>Nombre de Usuario:</label><br>
        <input type="text" name="username" required><br><br>

        <label>Contraseña:</label><br>
        <input type="password" name="password" required><br><br>

        <label>Nombre Completo:</label><br>
        <input type="text" name="nombreCompleto" required><br><br>

        <label>Email:</label><br>
        <input type="email" name="email" required><br><br>

        <label>Rol:</label><br>
        <select name="rol" required>
            <option value="ADMIN">ADMIN</option>
            <option value="USER">USER</option>
            <!-- Agrega más roles si tienes -->
        </select><br><br>

        <button type="submit">Crear Usuario</button>
    </form>

    <br><br>

    <h2>Buscar Usuario</h2>

    <form action="UsuarioServlet" method="GET">
        <label>Buscar por ID:</label><br>
        <input type="number" name="id" required><br><br>
        <button type="submit">Buscar</button>
    </form>

    <% 
        String mensaje = request.getParameter("mensaje");
        if (mensaje != null) {
    %>
        <p style="color:green;"><%= mensaje %></p>
    <% } %>

</body>
</html>
