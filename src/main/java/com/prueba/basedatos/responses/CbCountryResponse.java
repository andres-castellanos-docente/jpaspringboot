package com.prueba.basedatos.responses;



import com.prueba.basedatos.entities.CbCountryEntity;

import java.util.List;

public class CbCountryResponse extends ResponseGeneralArr {

    List<CbCountryEntity> countries;

    public CbCountryResponse(Integer responseCode, List<String> responseDescription, List<CbCountryEntity> countries, Integer status) {
        setResponseCode(responseCode);
        setResponseDescription(responseDescription);
        setStatus(status);
        setCountries(countries);
    }

    public CbCountryResponse(Integer responseCode, List<String> responseDescription, Integer status) {
        setResponseCode(responseCode);
        setResponseDescription(responseDescription);
        setStatus(status);
    }

    public List<CbCountryEntity> getCountries() {
        return countries;
    }

    public void setCountries(List<CbCountryEntity> countries) {
        this.countries = countries;
    }
}
