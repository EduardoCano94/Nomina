package com.itst.logica;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "eficiencia_corte")
public class EficienciaCorte implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_eficiencia_corte")
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "empleado_id", nullable = false)
    private Empleado empleado;
    
    @ManyToOne
    @JoinColumn(name = "seccion_id", nullable = false)
    private Seccion seccion;
    
    @Column(name = "operacion_id", nullable = false)
    private int operacionId;
    
    @ManyToOne
    @JoinColumn(name = "desempenio_id", nullable = false)
    private Desempenio desempenio;
    
    @Column(name = "porcentage_total")
    private int porcentajeTotal;
    
    @Column(name = "garantia")
    private int garantia;
    
    @Column(name = "dias_totales")
    private int diasTotales;
    
    @Column(name = "linea_id")
    private int lineaId;
    
    @Column(name = "pactado")
    private int pactado;
    
    @Column(name = "rebase")
    private int rebase;

    public EficienciaCorte() {
    }

    public EficienciaCorte(int id, Empleado empleado, Seccion seccion, int operacionId, Desempenio desempenio, int porcentajeTotal, int garantia, int diasTotales, int lineaId, int pactado, int rebase) {
        this.id = id;
        this.empleado = empleado;
        this.seccion = seccion;
        this.operacionId = operacionId;
        this.desempenio = desempenio;
        this.porcentajeTotal = porcentajeTotal;
        this.garantia = garantia;
        this.diasTotales = diasTotales;
        this.lineaId = lineaId;
        this.pactado = pactado;
        this.rebase = rebase;
    }

    public int getId() {
        return id;
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

    public Seccion getSeccion() {
        return seccion;
    }

    public void setSeccion(Seccion seccion) {
        this.seccion = seccion;
    }

    public int getOperacionId() {
        return operacionId;
    }

    public void setOperacionId(int operacionId) {
        this.operacionId = operacionId;
    }

    public Desempenio getDesempenio() {
        return desempenio;
    }

    public void setDesempenio(Desempenio desempenio) {
        this.desempenio = desempenio;
    }

    public int getPorcentajeTotal() {
        return porcentajeTotal;
    }

    public void setPorcentajeTotal(int porcentajeTotal) {
        this.porcentajeTotal = porcentajeTotal;
    }

    public int getGarantia() {
        return garantia;
    }

    public void setGarantia(int garantia) {
        this.garantia = garantia;
    }

    public int getDiasTotales() {
        return diasTotales;
    }

    public void setDiasTotales(int diasTotales) {
        this.diasTotales = diasTotales;
    }

    public int getLineaId() {
        return lineaId;
    }

    public void setLineaId(int lineaId) {
        this.lineaId = lineaId;
    }

    public int getPactado() {
        return pactado;
    }

    public void setPactado(int pactado) {
        this.pactado = pactado;
    }

    public int getRebase() {
        return rebase;
    }

    public void setRebase(int rebase) {
        this.rebase = rebase;
    }
    
    
}