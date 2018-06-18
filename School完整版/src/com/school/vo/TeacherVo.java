package com.school.vo;

import java.util.Objects;

public class TeacherVo {
    private int tid;
    private String tname;
    private String tpwd;
    private String tCollege;
    private String tGender;
    private String tJob;
    private int tphone;

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTpwd() {
        return tpwd;
    }

    public void setTpwd(String tpwd) {
        this.tpwd = tpwd;
    }

    public String gettCollege() {
        return tCollege;
    }

    public void settCollege(String tCollege) {
        this.tCollege = tCollege;
    }

    public String gettGender() {
        return tGender;
    }

    public void settGender(String tGender) {
        this.tGender = tGender;
    }

    public String gettJob() {
        return tJob;
    }

    public void settJob(String tJob) {
        this.tJob = tJob;
    }

    public int getTphone() {
        return tphone;
    }

    public void setTphone(int tphone) {
        this.tphone = tphone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TeacherVo teacherVo = (TeacherVo) o;
        return tid == teacherVo.tid &&
                tphone == teacherVo.tphone &&
                Objects.equals(tname, teacherVo.tname) &&
                Objects.equals(tpwd, teacherVo.tpwd) &&
                Objects.equals(tCollege, teacherVo.tCollege) &&
                Objects.equals(tGender, teacherVo.tGender) &&
                Objects.equals(tJob, teacherVo.tJob);
    }

    @Override
    public int hashCode() {

        return Objects.hash(tid, tname, tpwd, tCollege, tGender, tJob, tphone);
    }
}
