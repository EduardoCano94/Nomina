<!DOCTYPE html>
<html>
<head>
    <title>Cambiar Contrase�a</title>
</head>
<body>

    <h2>Cambiar Contrase�a</h2>

    <form action="CambiarPasswordSv" method="POST">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="nuevaPassword">Nueva Contrase�a:</label>
        <input type="password" id="nuevaPassword" name="nuevaPassword" required><br><br>

        <button type="submit">Actualizar Contrase�a</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <p style="color: red;"><%= request.getParameter("error") %></p>
    <% } %>

</body>
</html>
