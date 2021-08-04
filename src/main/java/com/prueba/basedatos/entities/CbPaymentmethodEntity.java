package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "cb_paymentmethod", schema = "public", catalog = "prueba")
public class CbPaymentmethodEntity {
    private Integer idpaymentmethod;
    private String paymentmethod;
    private String description;
    private String paymentterms;
    private String paymententity;

    @Id
    @Column(name = "idpaymentmethod", nullable = false)
    public Integer getIdpaymentmethod() {
        return idpaymentmethod;
    }

    public void setIdpaymentmethod(Integer idpaymentmethod) {
        this.idpaymentmethod = idpaymentmethod;
    }

    @Basic
    @Column(name = "paymentmethod", nullable = false, length = 100)
    public String getPaymentmethod() {
        return paymentmethod;
    }

    public void setPaymentmethod(String paymentmethod) {
        this.paymentmethod = paymentmethod;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 150)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "paymentterms", nullable = true, length = 250)
    public String getPaymentterms() {
        return paymentterms;
    }

    public void setPaymentterms(String paymentterms) {
        this.paymentterms = paymentterms;
    }

    @Basic
    @Column(name = "paymententity", nullable = true, length = 50)
    public String getPaymententity() {
        return paymententity;
    }

    public void setPaymententity(String paymententity) {
        this.paymententity = paymententity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbPaymentmethodEntity that = (CbPaymentmethodEntity) o;
        return Objects.equals(idpaymentmethod, that.idpaymentmethod) && Objects.equals(paymentmethod, that.paymentmethod) && Objects.equals(description, that.description) && Objects.equals(paymentterms, that.paymentterms) && Objects.equals(paymententity, that.paymententity);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idpaymentmethod, paymentmethod, description, paymentterms, paymententity);
    }
}
