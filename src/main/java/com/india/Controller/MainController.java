package com.india.Controller;

import com.google.gson.Gson;
import com.india.Bean.CityBean;
import com.india.Bean.CountryBean;
import com.india.Bean.StateBean;
import com.india.Entity.Address;
import com.india.Entity.City;
import com.india.Entity.Country;
import com.india.Entity.State;
import com.india.Repository.CityRepository;
import com.india.Repository.StateRepository;
import com.india.Service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.SecureRandom;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    MainService mainService;

    @GetMapping("Home")
    public String home(){
        return "Home";
    }

    @GetMapping("AddCountry")
    public String addCountry(Model model){
        model.addAttribute("countryBean", new CountryBean());
        return "AddCountry";
    }

    @PostMapping("SaveCountry")
    public String saveCountry(CountryBean countryBean){
    String result = mainService.saveCountry(countryBean);
    if(result.equalsIgnoreCase("Success"))
        System.out.println("Country Added Successfully!!");
    else
        System.out.println("Failed to Add Country!!");
     return "Home";
    }

    @GetMapping("ViewCountry")
    public String viewCountry(Model model){
        try {
            List<Country> countryList = mainService.countryList();
            model.addAttribute("list", countryList);
            System.out.println(countryList);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "ViewCountry";
    }

    @GetMapping("AddState")
    public String addState(Model model){
        try {
            List<Country> countryList = mainService.countryList();
            model.addAttribute("list", countryList);
            model.addAttribute("stateBean", new StateBean());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "AddState";
    }

    @PostMapping("SaveState")
    public String saveState(StateBean stateBean){
        String result = mainService.saveState(stateBean);
        if(result.equalsIgnoreCase("Success"))
            System.out.println("State Added Successfully!!");
        else
            System.out.println("Failed to Add State!!");
        return "Home";
    }

    @GetMapping("ViewState")
    public String ViewState(Model model){
        List<State> stateList= mainService.stateList();
        System.out.println(stateList);
        model.addAttribute("list", stateList);
        return "ViewState";
    }

    @GetMapping("AddCity")
    public String addCity(Model model){
        List<Country> list = mainService.countryList();
        model.addAttribute("list", list);
        model.addAttribute("addCityBean", new CityBean());
        return "AddCity";
    }

//    @PostMapping("GetStateListByCountryId/{cid}")
//    public List<State> getCountryList(@PathVariable("cid") int cid){
//        List<State> list = mainService.stateListByCountryId(cid);
//        return list;
//    }

    @ResponseBody
    @GetMapping("GetStateListByCountryId/{cid}")
    public String getCountryList(@PathVariable("cid") int cid){
        Gson gson = new Gson();
//        System.out.println(mainService.stateListByCountryId(cid));
        return gson.toJson(mainService.stateListByCountryId(cid));
    }

    @PostMapping("SaveCity")
    public String saveCity(CityBean cityBean){
        String result = mainService.saveCity(cityBean);
        if(result.equalsIgnoreCase("Success"))
            System.out.println("City Added Successfully");
        else
            System.out.println("Failed to Add City");
        return "Home";
    }

    @GetMapping("AddAddress")
    public String addAddress(Model model){
        model.addAttribute("addAddress", new Address());
        return "AddAddress";
    }
}
