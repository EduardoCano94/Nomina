<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.itst.logica.Empleado" %>
<%@ page import="com.itst.logica.ControladoraLogica" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Empleados</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; text-align: center; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; }
        th { background-color: #FFFFFF; color: black; }
        .seccion { background-color: #99ff99; }
        form { margin-bottom: 20px; }
        input, button { padding: 8px; margin: 5px; }
    </style>
</head>
<body>

    <h1>Gestión de Empleados</h1>

    <!-- Botón para volver al menú principal -->
    <p><a href="index.jsp">Volver al Menú Principal</a></p>

    <h2>Agregar Empleado</h2>
    <form action="EmpleadoSv" method="POST">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>

        <label for="seccion">Sección:</label>
        <input type="text" id="seccion" name="seccion">

        <label for="operacion">Operación:</label>
        <input type="text" id="operacion" name="operacion">

        <button type="submit">Agregar Empleado</button>
    </form>

    <h2>Lista de Empleados</h2>

    <%
        ControladoraLogica controlLogica = new ControladoraLogica();
        List<Empleado> listaEmpleados = controlLogica.traerEmpleados();
    %>

    <table>
        <tr>
            <th>Clave</th>
            <th>Nombre</th>
            <th class="seccion">Sección</th>
            <th>Operación</th>
        </tr>
        
        <% for (Empleado emp : listaEmpleados) { %> 
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getNombre() %></td>
            <td class="seccion"><%= emp.getSeccion() %></td>
            <td><%= emp.getOperacion() %></td>
        </tr>
        <% } %>
    </table>

</body>
</html>
