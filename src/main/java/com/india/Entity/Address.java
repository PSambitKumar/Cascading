package com.india.Entity;

import javax.persistence.*;

@Entity
@Table
public class Address {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int aid;
    @Column
    private String addr;
    @Column
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
        return "Address{" +
                "aid=" + aid +
                ", addr='" + addr + '\'' +
                ", cityId=" + cityId +
                '}';
    }
}
