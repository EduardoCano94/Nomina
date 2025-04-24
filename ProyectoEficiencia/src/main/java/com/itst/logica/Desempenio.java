package com.itst.logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "desempenio_diario")
public class Desempenio implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_desempenio")
    private int id;
    
    @Column(name = "porcentaje")
    private int porcentaje;
    
    @Column(name = "numero_piezas_realizadas")
    private int piezasRealizadas;
    
    @ManyToOne
    @JoinColumn(name = "id_meta_diaria", nullable = false)
    private MetaDiaria metaDiaria;
    
    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    
    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    
    @Column(name = "delated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date deletedAt;
   
    public Desempenio() {
    }

    public Desempenio(int id, int porcentaje, int piezasRealizadas, MetaDiaria metaDiaria, Date createdAt, Date updatedAt, Date deletedAt) {
        this.id = id;
        this.porcentaje = porcentaje;
        this.piezasRealizadas = piezasRealizadas;
        this.metaDiaria = metaDiaria;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.deletedAt = deletedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(int porcentaje) {
        this.porcentaje = porcentaje;
    }

    public int getPiezasRealizadas() {
        return piezasRealizadas;
    }

    public void setPiezasRealizadas(int piezasRealizadas) {
        this.piezasRealizadas = piezasRealizadas;
    }

    public MetaDiaria getMetaDiaria() {
        return metaDiaria;
    }

    public void setMetaDiaria(MetaDiaria metaDiaria) {
        this.metaDiaria = metaDiaria;
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
    
    
    
    
}