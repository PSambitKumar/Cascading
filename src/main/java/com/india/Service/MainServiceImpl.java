package com.india.Service;

import com.india.Bean.CityBean;
import com.india.Bean.CountryBean;
import com.india.Bean.StateBean;
import com.india.Entity.City;
import com.india.Entity.Country;
import com.india.Entity.State;
import com.india.Repository.CityRepository;
import com.india.Repository.CountryRepository;
import com.india.Repository.StateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainServiceImpl implements MainService {

    @Autowired
    CountryRepository countryRepository;
    @Autowired
    StateRepository stateRepository;
    @Autowired
    CityRepository cityRepository;

    @Override
    public String saveCountry(CountryBean countryBean) {
        String result = null;
        try {
            Country country = new Country();
            country.setCname(countryBean.getCname());
            countryRepository.save(country);
            if(countryRepository.save(country) != null)
                result = "Success";
            else
                result = "Fail";
        }catch (Exception e){
            e.printStackTrace();
            result = "Fail";
        }
        return result;
    }

    @Override
    public List<Country> countryList() {
        List<Country> listCountry = countryRepository.findAll();
        return listCountry;
    }

    @Override
    public String saveState(StateBean stateBean) {
        String result = null;
        try {
            State state = new State();
            state.setSid(stateBean.getSid());
            state.setSname(stateBean.getSname());
            state.setCountryId(stateBean.getCountryId());
            stateRepository.save(state);
            if(stateRepository.save(state) != null)
                result = "Success";
            else
                result = "Fail";
        }catch (Exception e){
            e.printStackTrace();
            result = "Fail";
        }
        return result;
    }

    @Override
    public List<State> stateListByCountryId(int cid) {
        List<State> stateListByCountryId = stateRepository.findAllByCountryId(cid);
        return stateListByCountryId;
    }

    @Override
    public String saveCity(CityBean cityBean) {
        String result = null;
        try {
            City city = new City();
            city.setCityname(cityBean.getCityname());
            city.setStateId(cityBean.getStateId());
            cityRepository.save(city);
            result = "Success";
        }catch (Exception e){
            e.printStackTrace();
            result = "False";
        }
        return result;
    }

    @Override
    public List<State> stateList() {
        return stateRepository.findAll();
    }
}
