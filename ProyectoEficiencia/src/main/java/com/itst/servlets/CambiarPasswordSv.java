package com.itst.servlets;

import com.itst.logica.ControladoraLogica;
import com.itst.logica.PassowrdUtil;
import com.itst.logica.Usuario;
import com.itst.logica.PassowrdUtil;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "CambiarPasswordSv", urlPatterns = {"/CambiarPasswordSv"})
public class CambiarPasswordSv extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtener datos del formulario
        String username = request.getParameter("username");
        String nuevaPassword = request.getParameter("nuevaPassword");

        // Buscar al usuario
        Usuario usuario = control.traerUsuarioPorUsername(username);

        if (usuario != null) {
            usuario.setPasswordHash(nuevaPassword);  // Cambiar la contraseña
            control.actualizarUsuario(usuario);  // Guardar en la base de datos
            response.sendRedirect("cambioExitoso.jsp");
        } else {
            response.sendRedirect("cambiarPassword.jsp?error=Usuario no encontrado");
        }
    }
}