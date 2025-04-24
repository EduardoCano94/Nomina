package com.itst.logica;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.*;

@Entity
@Table(name = "sueldos")
public class Sueldo implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "empleado_id", nullable = false)
    private Empleado empleado;
    
    @Column(name = "pactado", precision = 10, scale = 2, nullable = false)
    private BigDecimal pactado;
    
    @Column(name = "rebase", precision = 10, scale = 2)
    private BigDecimal rebase = BigDecimal.ZERO;
    
    @Column(name = "garantia", precision = 10, scale = 2)
    private BigDecimal garantia = BigDecimal.ZERO;
    
    @Column(name = "sueldo_real", precision = 10, scale = 2, nullable = false)
    private BigDecimal sueldoReal;
    
    @Column(name = "sueldo_con_garantia", precision = 10, scale = 2, nullable = false)
    private BigDecimal sueldoConGarantia;

    public int getId() {
        return id;
    }

    public Sueldo() {
    }

    public Sueldo(int id, Empleado empleado, BigDecimal pactado, BigDecimal sueldoReal, BigDecimal sueldoConGarantia) {
        this.id = id;
        this.empleado = empleado;
        this.pactado = pactado;
        this.sueldoReal = sueldoReal;
        this.sueldoConGarantia = sueldoConGarantia;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    public BigDecimal getPactado() {
        return pactado;
    }

    public void setPactado(BigDecimal pactado) {
        this.pactado = pactado;
    }

    public BigDecimal getRebase() {
        return rebase;
    }

    public void setRebase(BigDecimal rebase) {
        this.rebase = rebase;
    }

    public BigDecimal getGarantia() {
        return garantia;
    }

    public void setGarantia(BigDecimal garantia) {
        this.garantia = garantia;
    }

    public BigDecimal getSueldoReal() {
        return sueldoReal;
    }

    public void setSueldoReal(BigDecimal sueldoReal) {
        this.sueldoReal = sueldoReal;
    }

    public BigDecimal getSueldoConGarantia() {
        return sueldoConGarantia;
    }

    public void setSueldoConGarantia(BigDecimal sueldoConGarantia) {
        this.sueldoConGarantia = sueldoConGarantia;
    }
    

}