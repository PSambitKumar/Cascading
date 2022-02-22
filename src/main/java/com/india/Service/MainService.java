package com.india.Service;

import com.india.Bean.AddressBean;
import com.india.Bean.CityBean;
import com.india.Bean.CountryBean;
import com.india.Bean.StateBean;
import com.india.Entity.City;
import com.india.Entity.Country;
import com.india.Entity.State;

import java.util.List;

public interface MainService {
    String saveCountry(CountryBean countryBean);
    List<Country> countryList();
    List<State> stateList();
    String saveState(StateBean stateBean);
    List<State> stateListByCountryId(int cid);
    String saveCity(CityBean cityBean);
    List<City> cityListBySateId(int sid);
    String saveAddress(AddressBean addressBean);
}
