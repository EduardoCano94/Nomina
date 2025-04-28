
package com.itst.servlets;

import com.itst.logica.ControladoraLogica;
import com.itst.logica.PassowrdUtil;
import com.itst.logica.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginSv", urlPatterns = {"/LoginSv"})
public class LoginSv extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Usuario usuario = control.traerUsuarioPorUsername(username);

        if (usuario != null) {
            // Comparamos directamente (sin hash)
            if (usuario.getPasswordHash().equals(password)) {
                // Login exitoso
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuario", usuario);
                response.sendRedirect("UsuarioJsp.jsp");
            } else {
                // Password incorrecta
                response.sendRedirect("Login.jsp?error=true");
            }
        } else {
            // Usuario no encontrado
            response.sendRedirect("Login.jsp?error=true");
        }
    }
}
