package com.itst.logica;

import com.itst.persistencia.ControladoraPersistencia;
import java.util.List;

public class ControladoraLogica {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia ();
    
    public void crearEmpleado (Empleado emp){
        controlPersis.crearEmpleado(emp);
    }
    
   public List <Empleado> traerEmpleados(){
       return (List<Empleado>) controlPersis.traerEmpleados();
    }     
}
