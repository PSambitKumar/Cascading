package com.india.Bean;

public class AddressBean {
    private int aid;
    private String addr;
    private int cityId;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    @Override
    public String toString() {
        return "AddressBean{" +
                "aid=" + aid +
                ", addr='" + addr + '\'' +
                ", cityId=" + cityId +
                '}';
    }
}
