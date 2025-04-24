package com.itst.persistencia;

import com.itst.logica.Empleado;
import java.util.List;

public class ControladoraPersistencia {
    
    EmpleadoJpaController empleadoJpa = new EmpleadoJpaController ();
    
    public void crearEmpleado(Empleado emp){
        empleadoJpa.create(emp);
        
    }
    
    public List <Empleado> traerEmpleados(){
    return empleadoJpa.findEmpleadoEntities();
    }        
    
    
    
    }
    
    

