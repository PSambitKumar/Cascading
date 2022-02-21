package com.india.Bean;

public class CityBean {
    private  int cityid;
    private String cityname;
    private int stateId;

    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

    @Override
    public String toString() {
        return "CityBean{" +
                "cityid=" + cityid +
                ", cityname='" + cityname + '\'' +
                ", stateId=" + stateId +
                '}';
    }
}
