package com.itst.logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "meta_diaria")
public class MetaDiaria implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_meta_diaria")
    private int id;
    
    @Column(name = "numero_piezas_meta")
    private int piezasMeta;
    
    @Column(name = "operacion_id")
    private int operacionId;
    
    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    
    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    
    @Column(name = "delated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date deletedAt;

    public MetaDiaria() {
    }

    public MetaDiaria(int id, int piezasMeta, int operacionId, Date createdAt, Date updatedAt, Date deletedAt) {
        this.id = id;
        this.piezasMeta = piezasMeta;
        this.operacionId = operacionId;
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

    public int getPiezasMeta() {
        return piezasMeta;
    }

    public void setPiezasMeta(int piezasMeta) {
        this.piezasMeta = piezasMeta;
    }

    public int getOperacionId() {
        return operacionId;
    }

    public void setOperacionId(int operacionId) {
        this.operacionId = operacionId;
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