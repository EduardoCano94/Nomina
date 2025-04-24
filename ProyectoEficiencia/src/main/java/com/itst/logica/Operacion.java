package com.itst.logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "operaciones")
public class Operacion implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_operacion")
    private int id;
    
    @Column(name = "nombre", length = 50, nullable = false)
    private String nombre;
    
    @Column(name = "comentarios", columnDefinition = "TEXT")
    private String comentarios;
    
    @Column(name = "estado")
    private boolean estado;
    
    @ManyToOne
    @JoinColumn(name = "accion_id", nullable = false)
    private Acciones accion;
    
    @ManyToOne
    @JoinColumn(name = "tipo_maquina_id", nullable = false)
    private TipoMaquina tipoMaquina;
    
    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    
    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    
    @Column(name = "delated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date deletedAt;

    public Operacion() {
    }

    public Operacion(int id, String nombre, String comentarios, boolean estado, Acciones accion, TipoMaquina tipoMaquina, Date createdAt, Date updatedAt, Date deletedAt) {
        this.id = id;
        this.nombre = nombre;
        this.comentarios = comentarios;
        this.estado = estado;
        this.accion = accion;
        this.tipoMaquina = tipoMaquina;
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

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public Acciones getAccion() {
        return accion;
    }

    public void setAccion(Acciones accion) {
        this.accion = accion;
    }

    public TipoMaquina getTipoMaquina() {
        return tipoMaquina;
    }

    public void setTipoMaquina(TipoMaquina tipoMaquina) {
        this.tipoMaquina = tipoMaquina;
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