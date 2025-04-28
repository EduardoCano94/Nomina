package com.itst.logica;

import com.itst.persistencia.ControladoraPersistencia;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ControladoraLogica {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmpleadoPU");

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearEmpleado(Empleado emp) {
        controlPersis.crearEmpleado(emp);
    }

    public List<Empleado> traerEmpleados() {
        return (List<Empleado>) controlPersis.traerEmpleados();
    }

    // En ControladoraLogica.java
    public void crearUsuario(Usuario usuario) {
        controlPersis.crearUsuario(usuario);
    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public Usuario validarUsuario(String nombreUsuario, String contrasenia) {
        List<Usuario> listaUsuarios = traerUsuarios(); // ya deberías tener este método
        for (Usuario usu : listaUsuarios) {
            if (usu.getUsername().equals(nombreUsuario) && usu.getPasswordHash().equals(contrasenia)) {
                return usu;
            }
        }
        return null; // no encontró
    }

    public Usuario traerUsuarioPorUsername(String username) {
        List<Usuario> listaUsuarios = controlPersis.traerUsuarios();
        for (Usuario usu : listaUsuarios) {
            if (usu.getUsername().equals(username)) {
                return usu;
            }
        }
        return null;
    }
    
    public void actualizarUsuario(Usuario usuario) {
    EntityManager em = emf.createEntityManager();
    em.getTransaction().begin();
    em.merge(usuario);
    em.getTransaction().commit();
    em.close();
}


    /*public Usuario buscarUsuarioPorId(int id) {
    return controlPersis.buscarUsuarioPorId(id);
}

public void modificarUsuario(Usuario usuario) {
    controlPersis.modificarUsuario(usuario);
}

public void eliminarUsuario(int id) {
    Usuario usuario = controlPersis.buscarUsuarioPorId(id);
    if (usuario != null) {
        usuario.setActivo(false);
        controlPersis.modificarUsuario(usuario);
    }
}
     */
}
