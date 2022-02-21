package com.india.Repository;

import com.india.Entity.City;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Integer> {
    List<City> findAllByStateId(int stateId);
}
