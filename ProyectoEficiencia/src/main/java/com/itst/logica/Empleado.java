package com.itst.logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "empleados")
public class Empleado implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "nombre", nullable = false, length = 100)
    private String nombre;
    
    @Column(name = "ap_pat", nullable = false, length = 50)
    private String apellidoPaterno;
    
    @Column(name = "ap_mat", nullable = false, length = 50)
    private String apellidoMaterno;
    
    @Column(name = "seccion", length = 50)
    private String seccion;
    
    @Column(name = "operacion", length = 50)
    private String operacion;
    
    @Column(name = "anio_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaNacimiento;
    
    @Column(name = "telefono", length = 15)
    private String telefono;
    
    @Column(name = "estado")
    private boolean estado;
    
    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    
    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    
    @Column(name = "delated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date deletedAt;
    
    // Constructores
    public Empleado() {
    }
    
    public Empleado(String nombre, String apellidoPaterno, String apellidoMaterno, 
                    String seccion, String operacion) {
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.seccion = seccion;
        this.operacion = operacion;
        this.estado = true;
        this.createdAt = new Date();
        this.updatedAt = new Date();
    }
    
    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }

    public String getOperacion() {
        return operacion;
    }

    public void setOperacion(String operacion) {
        this.operacion = operacion;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Date getDeletedAt() {
        return deletedAt;
    }

    public void setDeletedAt(Date deletedAt) {
        this.deletedAt = deletedAt;
    }
    
    @Override
    public String toString() {
        return "Empleado{" + "id=" + id + ", nombre=" + nombre + 
               ", apellidoPaterno=" + apellidoPaterno + 
               ", apellidoMaterno=" + apellidoMaterno + 
               ", seccion=" + seccion + ", operacion=" + operacion + '}';
    }
}