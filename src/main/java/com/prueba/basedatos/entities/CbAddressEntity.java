package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "cb_address", schema = "public", catalog = "prueba")
public class CbAddressEntity {
    private Integer idaddress;
    private String address;
    private String postalnumber;
    private String mainphone;
    private String movilephone;
    private String phone2;
    private String phone3;
    private String carrier;
    private String addresstype;
    private String locality;
    private String state;
    private String notes1;

    @Id
    @Column(name = "idaddress", nullable = false)
    public Integer getIdaddress() {
        return idaddress;
    }

    public void setIdaddress(Integer idaddress) {
        this.idaddress = idaddress;
    }

    @Basic
    @Column(name = "address", nullable = true, length = 255)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "postalnumber", nullable = true, length = 20)
    public String getPostalnumber() {
        return postalnumber;
    }

    public void setPostalnumber(String postalnumber) {
        this.postalnumber = postalnumber;
    }

    @Basic
    @Column(name = "mainphone", nullable = true, length = 100)
    public String getMainphone() {
        return mainphone;
    }

    public void setMainphone(String mainphone) {
        this.mainphone = mainphone;
    }

    @Basic
    @Column(name = "movilephone", nullable = true, length = 100)
    public String getMovilephone() {
        return movilephone;
    }

    public void setMovilephone(String movilephone) {
        this.movilephone = movilephone;
    }

    @Basic
    @Column(name = "phone2", nullable = true, length = 100)
    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    @Basic
    @Column(name = "phone3", nullable = true, length = 100)
    public String getPhone3() {
        return phone3;
    }

    public void setPhone3(String phone3) {
        this.phone3 = phone3;
    }

    @Basic
    @Column(name = "carrier", nullable = true, length = 200)
    public String getCarrier() {
        return carrier;
    }

    public void setCarrier(String carrier) {
        this.carrier = carrier;
    }

    @Basic
    @Column(name = "addresstype", nullable = true, length = 100)
    public String getAddresstype() {
        return addresstype;
    }

    public void setAddresstype(String addresstype) {
        this.addresstype = addresstype;
    }

    @Basic
    @Column(name = "locality", nullable = true, length = 250)
    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    @Basic
    @Column(name = "state", nullable = true, length = 250)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "notes1", nullable = true, length = 500)
    public String getNotes1() {
        return notes1;
    }

    public void setNotes1(String notes1) {
        this.notes1 = notes1;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbAddressEntity that = (CbAddressEntity) o;
        return Objects.equals(idaddress, that.idaddress) && Objects.equals(address, that.address) && Objects.equals(postalnumber, that.postalnumber) && Objects.equals(mainphone, that.mainphone) && Objects.equals(movilephone, that.movilephone) && Objects.equals(phone2, that.phone2) && Objects.equals(phone3, that.phone3) && Objects.equals(carrier, that.carrier) && Objects.equals(addresstype, that.addresstype) && Objects.equals(locality, that.locality) && Objects.equals(state, that.state) && Objects.equals(notes1, that.notes1);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idaddress, address, postalnumber, mainphone, movilephone, phone2, phone3, carrier, addresstype, locality, state, notes1);
    }
}
