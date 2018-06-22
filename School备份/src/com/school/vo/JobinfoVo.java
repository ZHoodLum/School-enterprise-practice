package com.school.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class JobinfoVo {
    private int jId;
    private String jInfo;
    private String job;
    private Timestamp jDate;
    private String ename;
    private String eCheck;
    private String wage;

    public int getjId() {
        return jId;
    }

    public void setjId(int jId) {
        this.jId = jId;
    }

    public String getjInfo() {
        return jInfo;
    }

    public void setjInfo(String jInfo) {
        this.jInfo = jInfo;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public Timestamp getjDate() {
        return jDate;
    }

    public void setjDate(Timestamp jDate) {
        this.jDate = jDate;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String geteCheck() {
        return eCheck;
    }

    public void seteCheck(String eCheck) {
        this.eCheck = eCheck;
    }

    public String getWage() {
        return wage;
    }

    public void setWage(String wage) {
        this.wage = wage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        JobinfoVo jobinfoVo = (JobinfoVo) o;
        return jId == jobinfoVo.jId &&
                Objects.equals(jInfo, jobinfoVo.jInfo) &&
                Objects.equals(job, jobinfoVo.job) &&
                Objects.equals(jDate, jobinfoVo.jDate) &&
                Objects.equals(ename, jobinfoVo.ename) &&
                Objects.equals(eCheck, jobinfoVo.eCheck) &&
                Objects.equals(wage, jobinfoVo.wage);
    }

    @Override
    public int hashCode() {

        return Objects.hash(jId, jInfo, job, jDate, ename, eCheck, wage);
    }
}
