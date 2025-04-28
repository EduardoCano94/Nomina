package com.itst.persistencia;

import com.itst.logica.Empleado;
import com.itst.logica.Usuario;
import java.util.List;

public class ControladoraPersistencia {

    EmpleadoJpaController empleadoJpa = new EmpleadoJpaController();
    UsuarioJpaController usuarioJpa = new UsuarioJpaController ();

    public void crearEmpleado(Empleado emp) {
        empleadoJpa.create(emp);

    }

    public List<Empleado> traerEmpleados() {
        return empleadoJpa.findEmpleadoEntities();
    }
//USUARIO
    public void crearUsuario(Usuario usuario) {
         usuarioJpa.create(usuario);
    
    }

    public List<Usuario> traerUsuarios() {
      return usuarioJpa.findUsuarioEntities();
    }

  

}
