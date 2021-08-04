package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "cb_addresses", schema = "public", catalog = "prueba")
public class CbAddressesEntity {
    private Integer idaddresses;
    private String addressesentity;

    @Id
    @Column(name = "idaddresses", nullable = false)
    public Integer getIdaddresses() {
        return idaddresses;
    }

    public void setIdaddresses(Integer idaddresses) {
        this.idaddresses = idaddresses;
    }

    @Basic
    @Column(name = "addressesentity", nullable = false, length = 100)
    public String getAddressesentity() {
        return addressesentity;
    }

    public void setAddressesentity(String addressesentity) {
        this.addressesentity = addressesentity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbAddressesEntity that = (CbAddressesEntity) o;
        return Objects.equals(idaddresses, that.idaddresses) && Objects.equals(addressesentity, that.addressesentity);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idaddresses, addressesentity);
    }
}
