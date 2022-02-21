package com.india.Bean;

public class StateBean {
    private int sid;
    private String sname;
    private int countryId;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    @Override
    public String toString() {
        return "StateBean{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", countryId=" + countryId +
                '}';
    }
}
