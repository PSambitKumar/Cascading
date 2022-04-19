package com.india.Repository;

import com.india.Entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country, Integer> {

    @Query("SELECT cname FROM Country")
    List<String> findAllCountryName();
    List<Country> findCountryByCname(String cName);
    List<Country> findCountryByCnameStartingWith(String cName);
    List<Country> findCountryByCnameStartsWith(String cName);
}
