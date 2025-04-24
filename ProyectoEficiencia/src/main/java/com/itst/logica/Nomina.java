package com.itst.logica;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "nominas")
public class Nomina implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_nomina")
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "eficiencia_corte_id", nullable = false)
    private EficienciaCorte eficienciaCorte;
    
    @Column(name = "departamento", length = 50)
    private String departamento;
    
    @Column(name = "salario_base", precision = 10, scale = 2)
    private BigDecimal salarioBase;
    
    @Column(name = "horas_trabajadas")
    private int horasTrabajadas;
    
    @Column(name = "tarifa_hora", precision = 10, scale = 2)
    private BigDecimal tarifaHora;
    
    @Column(name = "horas_extras")
    private int horasExtras;
    
    @Column(name = "tarifa_horas_extras", precision = 10, scale = 2)
    private BigDecimal tarifaHorasExtras;
    
    @Column(name = "salario_neto", precision = 10, scale = 2, nullable = false)
    private BigDecimal salarioNeto;
    
    @Column(name = "fecha_pago")
    @Temporal(TemporalType.DATE)
    private Date fechaPago;
    
    @Column(name = "periodo_pago", length = 20)
    private String periodoPago;

    public Nomina() {
    }

    public Nomina(int id, EficienciaCorte eficienciaCorte, String departamento, BigDecimal salarioBase, int horasTrabajadas, BigDecimal tarifaHora, int horasExtras, BigDecimal tarifaHorasExtras, BigDecimal salarioNeto, Date fechaPago, String periodoPago) {
        this.id = id;
        this.eficienciaCorte = eficienciaCorte;
        this.departamento = departamento;
        this.salarioBase = salarioBase;
        this.horasTrabajadas = horasTrabajadas;
        this.tarifaHora = tarifaHora;
        this.horasExtras = horasExtras;
        this.tarifaHorasExtras = tarifaHorasExtras;
        this.salarioNeto = salarioNeto;
        this.fechaPago = fechaPago;
        this.periodoPago = periodoPago;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public EficienciaCorte getEficienciaCorte() {
        return eficienciaCorte;
    }

    public void setEficienciaCorte(EficienciaCorte eficienciaCorte) {
        this.eficienciaCorte = eficienciaCorte;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public BigDecimal getSalarioBase() {
        return salarioBase;
    }

    public void setSalarioBase(BigDecimal salarioBase) {
        this.salarioBase = salarioBase;
    }

    public int getHorasTrabajadas() {
        return horasTrabajadas;
    }

    public void setHorasTrabajadas(int horasTrabajadas) {
        this.horasTrabajadas = horasTrabajadas;
    }

    public BigDecimal getTarifaHora() {
        return tarifaHora;
    }

    public void setTarifaHora(BigDecimal tarifaHora) {
        this.tarifaHora = tarifaHora;
    }

    public int getHorasExtras() {
        return horasExtras;
    }

    public void setHorasExtras(int horasExtras) {
        this.horasExtras = horasExtras;
    }

    public BigDecimal getTarifaHorasExtras() {
        return tarifaHorasExtras;
    }

    public void setTarifaHorasExtras(BigDecimal tarifaHorasExtras) {
        this.tarifaHorasExtras = tarifaHorasExtras;
    }

    public BigDecimal getSalarioNeto() {
        return salarioNeto;
    }

    public void setSalarioNeto(BigDecimal salarioNeto) {
        this.salarioNeto = salarioNeto;
    }

    public Date getFechaPago() {
        return fechaPago;
    }

    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public String getPeriodoPago() {
        return periodoPago;
    }

    public void setPeriodoPago(String periodoPago) {
        this.periodoPago = periodoPago;
    }

}