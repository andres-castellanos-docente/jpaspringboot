package com.prueba.basedatos.repositories;

import com.prueba.basedatos.entities.CbCountryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CbCountryRepository extends JpaRepository<CbCountryEntity, Integer> {
}
