<!DOCTYPE html>
<html>
<head>
    <title>Cambiar Contraseña</title>
</head>
<body>

    <h2>Cambiar Contraseña</h2>

    <form action="CambiarPasswordSv" method="POST">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="nuevaPassword">Nueva Contraseña:</label>
        <input type="password" id="nuevaPassword" name="nuevaPassword" required><br><br>

        <button type="submit">Actualizar Contraseña</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <p style="color: red;"><%= request.getParameter("error") %></p>
    <% } %>

</body>
</html>
