<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.itst.logica.Empleado" %>
<%@ page import="com.itst.logica.ControladoraLogica" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Empleados</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #FFFFFF;
            color: black;
        }
        .seccion {
            background-color: #99ff99; 
        }
        .meta {
            background-color: #99ff99; 
        }
        .valor-alto {
            background-color: #99ff99;
        }
        .valor-bajo {
            background-color: #ff9999; 
        }
        form {
            margin-bottom: 20px;
        }
        input, button {
            padding: 8px;
            margin: 5px;
        }
    </style>
</head>
<body>

    <h1>Gestión de Empleados</h1>

    <!-- Formulario para agregar un nuevo empleado -->
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
            <!-- comment <th>Lunes</th>
            <th>Martes</th>
            <th>Miércoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
            <th class="meta">Meta</th>
            <th class="valor-alto">Rendimiento</th>
            <th class="valor-bajo">Garantía</th> --> 
        </tr>
        
        <%
        for (Empleado emp : listaEmpleados) {
            int meta = 1000; // Ejemplo de meta
            int rendimiento = (int) (Math.random() * 200); // Simulación de rendimiento
            int garantia = (int) (Math.random() * 500); // Simulación de garantía
        %> 
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getNombre() %></td>
            <td class="seccion"><%= emp.getSeccion() %></td>
            <td><%= emp.getOperacion() %></td>
            <!--<td><%= (int) (Math.random() * 150) %></td>
            <td><%= (int) (Math.random() * 150) %></td>
            <td><%= (int) (Math.random() * 150) %></td>
            <td><%= (int) (Math.random() * 150) %></td>
            <td><%= (int) (Math.random() * 150) %></td>
            <td class="meta"><%= meta %></td>
            <td class="valor-alto"><%= rendimiento %></td>
            <td class="valor-bajo"><%= garantia %></td> --> 
        </tr>
        <% } %>
    </table>

</body>
</html>
