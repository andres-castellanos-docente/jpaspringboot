package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.Objects;

@Entity
@Table(name = "cb_country", schema = "public", catalog = "prueba")
public class CbCountryEntity {
    private Integer idcountry;
    private String country;
    private String description;
    private String countrycode;
    private Boolean hasregion;
    private String regionname;
    private String expressionphone;
    private String displaysequence;
    private Boolean isdefault;
    private BigInteger ibannodigits;
    private String ibancountry;
    private Boolean isactive;

    @Id
    @Column(name = "idcountry", nullable = false)
    public Integer getIdcountry() {
        return idcountry;
    }

    public void setIdcountry(Integer idcountry) {
        this.idcountry = idcountry;
    }

    @Basic
    @Column(name = "country", nullable = false, length = 100)
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 255)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "countrycode", nullable = false, length = 2)
    public String getCountrycode() {
        return countrycode;
    }

    public void setCountrycode(String countrycode) {
        this.countrycode = countrycode;
    }

    @Basic
    @Column(name = "hasregion", nullable = false)
    public Boolean getHasregion() {
        return hasregion;
    }

    public void setHasregion(Boolean hasregion) {
        this.hasregion = hasregion;
    }

    @Basic
    @Column(name = "regionname", nullable = true, length = 60)
    public String getRegionname() {
        return regionname;
    }

    public void setRegionname(String regionname) {
        this.regionname = regionname;
    }

    @Basic
    @Column(name = "expressionphone", nullable = true, length = 20)
    public String getExpressionphone() {
        return expressionphone;
    }

    public void setExpressionphone(String expressionphone) {
        this.expressionphone = expressionphone;
    }

    @Basic
    @Column(name = "displaysequence", nullable = false, length = 20)
    public String getDisplaysequence() {
        return displaysequence;
    }

    public void setDisplaysequence(String displaysequence) {
        this.displaysequence = displaysequence;
    }

    @Basic
    @Column(name = "isdefault", nullable = true)
    public Boolean getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(Boolean isdefault) {
        this.isdefault = isdefault;
    }

    @Basic
    @Column(name = "ibannodigits", nullable = true, precision = 0)
    public BigInteger getIbannodigits() {
        return ibannodigits;
    }

    public void setIbannodigits(BigInteger ibannodigits) {
        this.ibannodigits = ibannodigits;
    }

    @Basic
    @Column(name = "ibancountry", nullable = true, length = 2)
    public String getIbancountry() {
        return ibancountry;
    }

    public void setIbancountry(String ibancountry) {
        this.ibancountry = ibancountry;
    }

    @Basic
    @Column(name = "isactive", nullable = false)
    public Boolean getIsactive() {
        return isactive;
    }

    public void setIsactive(Boolean isactive) {
        this.isactive = isactive;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbCountryEntity that = (CbCountryEntity) o;
        return Objects.equals(idcountry, that.idcountry) && Objects.equals(country, that.country) && Objects.equals(description, that.description) && Objects.equals(countrycode, that.countrycode) && Objects.equals(hasregion, that.hasregion) && Objects.equals(regionname, that.regionname) && Objects.equals(expressionphone, that.expressionphone) && Objects.equals(displaysequence, that.displaysequence) && Objects.equals(isdefault, that.isdefault) && Objects.equals(ibannodigits, that.ibannodigits) && Objects.equals(ibancountry, that.ibancountry) && Objects.equals(isactive, that.isactive);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idcountry, country, description, countrycode, hasregion, regionname, expressionphone, displaysequence, isdefault, ibannodigits, ibancountry, isactive);
    }
}
