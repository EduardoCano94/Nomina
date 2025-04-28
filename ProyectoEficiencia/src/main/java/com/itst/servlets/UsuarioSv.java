package com.itst.servlets;

import com.itst.logica.ControladoraLogica;
import com.itst.logica.Rol;
import com.itst.logica.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UsuarioSv", urlPatterns = {"/UsuarioSv"})
public class UsuarioSv extends HttpServlet {
     ControladoraLogica controlLogica = new ControladoraLogica();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Usuario usuario = controlLogica.traerUsuarioPorUsername(username);

        if (usuario != null) {
            // Comparamos el password (ojo: aquí es sencillo, sin encriptar)
            if (usuario.getPasswordHash().equals(password)) {
                // Login exitoso
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", usuario);
                response.sendRedirect("index.jsp");
            } else {
                // Contraseña incorrecta
                request.setAttribute("error", "Usuario o contraseña incorrectos.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            // Usuario no encontrado
            request.setAttribute("error", "Usuario o contraseña incorrectos.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}