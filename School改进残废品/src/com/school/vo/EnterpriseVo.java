package com.school.vo;

import java.util.Objects;

public class EnterpriseVo {
    private int eid;
    private String ename;
    private String epwd;
    private String eintroduce;
    private String eadd;
    private String ephone;
    private String email;
    private String emanager;

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEpwd() {
        return epwd;
    }

    public void setEpwd(String epwd) {
        this.epwd = epwd;
    }

    public String getEintroduce() {
        return eintroduce;
    }

    public void setEintroduce(String eintroduce) {
        this.eintroduce = eintroduce;
    }

    public String getEadd() {
        return eadd;
    }

    public void setEadd(String eadd) {
        this.eadd = eadd;
    }

    public String getEphone() {
        return ephone;
    }

    public void setEphone(String ephone) {
        this.ephone = ephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmanager() {
        return emanager;
    }

    public void setEmanager(String emanager) {
        this.emanager = emanager;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EnterpriseVo that = (EnterpriseVo) o;
        return eid == that.eid &&
                Objects.equals(ename, that.ename) &&
                Objects.equals(epwd, that.epwd) &&
                Objects.equals(eintroduce, that.eintroduce) &&
                Objects.equals(eadd, that.eadd) &&
                Objects.equals(ephone, that.ephone) &&
                Objects.equals(email, that.email) &&
                Objects.equals(emanager, that.emanager);
    }

    @Override
    public int hashCode() {

        return Objects.hash(eid, ename, epwd, eintroduce, eadd, ephone, email, emanager);
    }
}
