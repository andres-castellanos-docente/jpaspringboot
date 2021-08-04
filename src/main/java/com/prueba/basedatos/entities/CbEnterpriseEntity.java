package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name = "cb_enterprise", schema = "public", catalog = "prueba")
public class CbEnterpriseEntity {
    private Integer identerprise;
    private String enterprise;
    private String description;
    private String enterprisealias;
    private String contact;
    private String status;
    private BigDecimal balance;
    private String ei;
    private String enterprisepayer;

    @Id
    @Column(name = "identerprise", nullable = false)
    public Integer getIdenterprise() {
        return identerprise;
    }

    public void setIdenterprise(Integer identerprise) {
        this.identerprise = identerprise;
    }

    @Basic
    @Column(name = "enterprise", nullable = true, length = 150)
    public String getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(String enterprise) {
        this.enterprise = enterprise;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 250)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "enterprisealias", nullable = true, length = 100)
    public String getEnterprisealias() {
        return enterprisealias;
    }

    public void setEnterprisealias(String enterprisealias) {
        this.enterprisealias = enterprisealias;
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
    @Column(name = "status", nullable = true, length = 30)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Basic
    @Column(name = "balance", nullable = true, precision = 4)
    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    @Basic
    @Column(name = "ei", nullable = true, length = 100)
    public String getEi() {
        return ei;
    }

    public void setEi(String ei) {
        this.ei = ei;
    }

    @Basic
    @Column(name = "enterprisepayer", nullable = true, length = 20)
    public String getEnterprisepayer() {
        return enterprisepayer;
    }

    public void setEnterprisepayer(String enterprisepayer) {
        this.enterprisepayer = enterprisepayer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbEnterpriseEntity that = (CbEnterpriseEntity) o;
        return Objects.equals(identerprise, that.identerprise) && Objects.equals(enterprise, that.enterprise) && Objects.equals(description, that.description) && Objects.equals(enterprisealias, that.enterprisealias) && Objects.equals(contact, that.contact) && Objects.equals(status, that.status) && Objects.equals(balance, that.balance) && Objects.equals(ei, that.ei) && Objects.equals(enterprisepayer, that.enterprisepayer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(identerprise, enterprise, description, enterprisealias, contact, status, balance, ei, enterprisepayer);
    }
}
