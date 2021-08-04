package com.prueba.basedatos.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "cb_language", schema = "public", catalog = "prueba")
public class CbLanguageEntity {
    private String idlanguage;
    private String namelanguage;
    private Boolean isactive;
    private String languageiso;
    private String countrycode;
    private Boolean isbaselanguage;
    private Boolean issystemlanguage;

    @Id
    @Column(name = "idlanguage", nullable = false, length = 6)
    public String getIdlanguage() {
        return idlanguage;
    }

    public void setIdlanguage(String idlanguage) {
        this.idlanguage = idlanguage;
    }

    @Basic
    @Column(name = "namelanguage", nullable = false, length = 60)
    public String getNamelanguage() {
        return namelanguage;
    }

    public void setNamelanguage(String namelanguage) {
        this.namelanguage = namelanguage;
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
    @Column(name = "languageiso", nullable = true, length = 2)
    public String getLanguageiso() {
        return languageiso;
    }

    public void setLanguageiso(String languageiso) {
        this.languageiso = languageiso;
    }

    @Basic
    @Column(name = "countrycode", nullable = true, length = 2)
    public String getCountrycode() {
        return countrycode;
    }

    public void setCountrycode(String countrycode) {
        this.countrycode = countrycode;
    }

    @Basic
    @Column(name = "isbaselanguage", nullable = false)
    public Boolean getIsbaselanguage() {
        return isbaselanguage;
    }

    public void setIsbaselanguage(Boolean isbaselanguage) {
        this.isbaselanguage = isbaselanguage;
    }

    @Basic
    @Column(name = "issystemlanguage", nullable = false)
    public Boolean getIssystemlanguage() {
        return issystemlanguage;
    }

    public void setIssystemlanguage(Boolean issystemlanguage) {
        this.issystemlanguage = issystemlanguage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CbLanguageEntity that = (CbLanguageEntity) o;
        return Objects.equals(idlanguage, that.idlanguage) && Objects.equals(namelanguage, that.namelanguage) && Objects.equals(isactive, that.isactive) && Objects.equals(languageiso, that.languageiso) && Objects.equals(countrycode, that.countrycode) && Objects.equals(isbaselanguage, that.isbaselanguage) && Objects.equals(issystemlanguage, that.issystemlanguage);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idlanguage, namelanguage, isactive, languageiso, countrycode, isbaselanguage, issystemlanguage);
    }
}
