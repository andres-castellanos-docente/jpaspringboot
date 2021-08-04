package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name = "cb_currency", schema = "public", catalog = "prueba")
public class CbCurrencyEntity {
    private Integer idcurrency;
    private String currency;
    private String description;
    private Boolean isactive;
    private String isocode;
    private String cursymbol;
    private BigDecimal precisionstd;
    private BigDecimal precisioncost;
    private BigDecimal precisionprize;

    @Id
    @Column(name = "idcurrency", nullable = false)
    public Integer getIdcurrency() {
        return idcurrency;
    }

    public void setIdcurrency(Integer idcurrency) {
        this.idcurrency = idcurrency;
    }

    @Basic
    @Column(name = "currency", nullable = false, length = 60)
    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    @Basic
    @Column(name = "description", nullable = false, length = 255)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "isactive", nullable = false)
    public Boolean getIsactive() {
        return isactive;
    }

    public void setIsactive(Boolean isactive) {
        this.isactive = isactive;
    }

    @Basic
    @Column(name = "isocode", nullable = false, length = 3)
    public String getIsocode() {
        return isocode;
    }

    public void setIsocode(String isocode) {
        this.isocode = isocode;
    }

    @Basic
    @Column(name = "cursymbol", nullable = true, length = 10)
    public String getCursymbol() {
        return cursymbol;
    }

    public void setCursymbol(String cursymbol) {
        this.cursymbol = cursymbol;
    }

    @Basic
    @Column(name = "precisionstd", nullable = false, precision = 2)
    public BigDecimal getPrecisionstd() {
        return precisionstd;
    }

    public void setPrecisionstd(BigDecimal precisionstd) {
        this.precisionstd = precisionstd;
    }

    @Basic
    @Column(name = "precisioncost", nullable = false, precision = 2)
    public BigDecimal getPrecisioncost() {
        return precisioncost;
    }

    public void setPrecisioncost(BigDecimal precisioncost) {
        this.precisioncost = precisioncost;
    }

    @Basic
    @Column(name = "precisionprize", nullable = false, precision = 2)
    public BigDecimal getPrecisionprize() {
        return precisionprize;
    }

    public void setPrecisionprize(BigDecimal precisionprize) {
        this.precisionprize = precisionprize;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbCurrencyEntity that = (CbCurrencyEntity) o;
        return Objects.equals(idcurrency, that.idcurrency) && Objects.equals(currency, that.currency) && Objects.equals(description, that.description) && Objects.equals(isactive, that.isactive) && Objects.equals(isocode, that.isocode) && Objects.equals(cursymbol, that.cursymbol) && Objects.equals(precisionstd, that.precisionstd) && Objects.equals(precisioncost, that.precisioncost) && Objects.equals(precisionprize, that.precisionprize);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idcurrency, currency, description, isactive, isocode, cursymbol, precisionstd, precisioncost, precisionprize);
    }
}
