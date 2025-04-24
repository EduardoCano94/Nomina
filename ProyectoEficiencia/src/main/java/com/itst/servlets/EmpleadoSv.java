package com.itst.servlets;

import com.itst.logica.ControladoraLogica;
import com.itst.logica.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EmpleadoSv", urlPatterns = {"/EmpleadoSv"})
public class EmpleadoSv extends HttpServlet {

    ControladoraLogica controlLogica = new ControladoraLogica();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        List<Empleado> listaEmpleados = controlLogica.traerEmpleados();
        try (PrintWriter out = response.getWriter()) {
            out.println("<html><body>");
            out.println("<h2>Lista de Empleados</h2>");
            out.println("<ul>");
            for (Empleado emp : listaEmpleados) {
                out.println("<li>" + emp.getNombre() + "</li>");
            }
            out.println("</ul>");
            out.println("</body></html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String seccion = request.getParameter("seccion");
        String operacion = request.getParameter("operacion");

        // Crear objeto Empleado
        Empleado nuevoEmpleado = new Empleado();
        nuevoEmpleado.setNombre(nombre);
        nuevoEmpleado.setSeccion(seccion);
        nuevoEmpleado.setOperacion(operacion);

        // Guardar en la base de datos
        controlLogica.crearEmpleado(nuevoEmpleado);

        // Redirigir o responder
        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet que maneja empleados";
    }
}
