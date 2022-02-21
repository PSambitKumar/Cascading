package com.india.Repository;

import com.india.Entity.State;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StateRepository extends JpaRepository<State, Integer> {
    List<State> findAllByCountryId(int countryId);
}
