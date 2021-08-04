package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name = "cb_customer", schema = "public", catalog = "prueba")
public class CbCustomerEntity {
    private Integer idcustomer;
    private String customer;
    private String customername;
    private String customeralias;
    private String contact;
    private String customerstate;
    private BigDecimal sale;
    private String identitynumber;
    private String customerpayer;

    @Id
    @Column(name = "idcustomer", nullable = false)
    public Integer getIdcustomer() {
        return idcustomer;
    }

    public void setIdcustomer(Integer idcustomer) {
        this.idcustomer = idcustomer;
    }

    @Basic
    @Column(name = "customer", nullable = false, length = 15)
    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    @Basic
    @Column(name = "customername", nullable = true, length = 150)
    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    @Basic
    @Column(name = "customeralias", nullable = true, length = 100)
    public String getCustomeralias() {
        return customeralias;
    }

    public void setCustomeralias(String customeralias) {
        this.customeralias = customeralias;
    }

    @Basic
    @Column(name = "contact", nullable = true, length = 250)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Basic
    @Column(name = "customerstate", nullable = true, length = 30)
    public String getCustomerstate() {
        return customerstate;
    }

    public void setCustomerstate(String customerstate) {
        this.customerstate = customerstate;
    }

    @Basic
    @Column(name = "sale", nullable = true, precision = 4)
    public BigDecimal getSale() {
        return sale;
    }

    public void setSale(BigDecimal sale) {
        this.sale = sale;
    }

    @Basic
    @Column(name = "identitynumber", nullable = true, length = 100)
    public String getIdentitynumber() {
        return identitynumber;
    }

    public void setIdentitynumber(String identitynumber) {
        this.identitynumber = identitynumber;
    }

    @Basic
    @Column(name = "customerpayer", nullable = true, length = 20)
    public String getCustomerpayer() {
        return customerpayer;
    }

    public void setCustomerpayer(String customerpayer) {
        this.customerpayer = customerpayer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbCustomerEntity that = (CbCustomerEntity) o;
        return Objects.equals(idcustomer, that.idcustomer) && Objects.equals(customer, that.customer) && Objects.equals(customername, that.customername) && Objects.equals(customeralias, that.customeralias) && Objects.equals(contact, that.contact) && Objects.equals(customerstate, that.customerstate) && Objects.equals(sale, that.sale) && Objects.equals(identitynumber, that.identitynumber) && Objects.equals(customerpayer, that.customerpayer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idcustomer, customer, customername, customeralias, contact, customerstate, sale, identitynumber, customerpayer);
    }
}
