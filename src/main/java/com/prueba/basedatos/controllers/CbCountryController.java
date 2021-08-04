package com.prueba.basedatos.controllers;

import com.prueba.basedatos.repositories.CbCountryRepository;
import com.prueba.basedatos.responses.CbCountryResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CbCountryController {
    @Autowired
    private CbCountryRepository cbCountryRepository;
    @GetMapping("/country")
    public ResponseEntity<CbCountryResponse> getCountries() {
        return new ResponseEntity<>(new CbCountryResponse(1, null, cbCountryRepository.findAll(), HttpStatus.OK.value()), HttpStatus.OK);
    }
}
