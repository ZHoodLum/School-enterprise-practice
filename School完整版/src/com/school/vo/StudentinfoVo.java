package com.school.vo;

import java.util.Objects;

public class StudentinfoVo {
    private int sno;
    private String sname;
    private String spwd;
    private String sGender;
    private String major;
    private String city;
    private String email;
    private int sPhone;
    private String sCollege;
    private String tname;
    private String cE;
    private String ename;
    private Integer sGrade;

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSpwd() {
        return spwd;
    }

    public void setSpwd(String spwd) {
        this.spwd = spwd;
    }

    public String getsGender() {
        return sGender;
    }

    public void setsGender(String sGender) {
        this.sGender = sGender;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getsPhone() {
        return sPhone;
    }

    public void setsPhone(int sPhone) {
        this.sPhone = sPhone;
    }

    public String getsCollege() {
        return sCollege;
    }

    public void setsCollege(String sCollege) {
        this.sCollege = sCollege;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getcE() {
        return cE;
    }

    public void setcE(String cE) {
        this.cE = cE;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Integer getsGrade() {
        return sGrade;
    }

    public void setsGrade(Integer sGrade) {
        this.sGrade = sGrade;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StudentinfoVo that = (StudentinfoVo) o;
        return sno == that.sno &&
                sPhone == that.sPhone &&
                Objects.equals(sname, that.sname) &&
                Objects.equals(spwd, that.spwd) &&
                Objects.equals(sGender, that.sGender) &&
                Objects.equals(major, that.major) &&
                Objects.equals(city, that.city) &&
                Objects.equals(email, that.email) &&
                Objects.equals(sCollege, that.sCollege) &&
                Objects.equals(tname, that.tname) &&
                Objects.equals(cE, that.cE) &&
                Objects.equals(ename, that.ename) &&
                Objects.equals(sGrade, that.sGrade);
    }

    @Override
    public int hashCode() {

        return Objects.hash(sno, sname, spwd, sGender, major, city, email, sPhone, sCollege, tname, cE, ename, sGrade);
    }
}
