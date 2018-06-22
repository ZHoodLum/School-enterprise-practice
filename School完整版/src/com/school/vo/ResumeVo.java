package com.school.vo;

import java.sql.Date;
import java.util.Objects;

public class ResumeVo {
    private int sno;
    private String sname;
    private String gender;
    private String nationality;
    private Date birthday;
    private String city;
    private String politics;
    private String health;
    private String college;
    private String education;
    private String major;
    private Date graduateTime;
    private String email;
    private String studentContinueTime;
    private String majorCourse;
    private String credential;
    private String selfEvaluation;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPolitics() {
        return politics;
    }

    public void setPolitics(String politics) {
        this.politics = politics;
    }

    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Date getGraduateTime() {
        return graduateTime;
    }

    public void setGraduateTime(Date graduateTime) {
        this.graduateTime = graduateTime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStudentContinueTime() {
        return studentContinueTime;
    }

    public void setStudentContinueTime(String studentContinueTime) {
        this.studentContinueTime = studentContinueTime;
    }

    public String getMajorCourse() {
        return majorCourse;
    }

    public void setMajorCourse(String majorCourse) {
        this.majorCourse = majorCourse;
    }

    public String getCredential() {
        return credential;
    }

    public void setCredential(String credential) {
        this.credential = credential;
    }

    public String getSelfEvaluation() {
        return selfEvaluation;
    }

    public void setSelfEvaluation(String selfEvaluation) {
        this.selfEvaluation = selfEvaluation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ResumeVo resumeVo = (ResumeVo) o;
        return sno == resumeVo.sno &&
                Objects.equals(sname, resumeVo.sname) &&
                Objects.equals(gender, resumeVo.gender) &&
                Objects.equals(nationality, resumeVo.nationality) &&
                Objects.equals(birthday, resumeVo.birthday) &&
                Objects.equals(city, resumeVo.city) &&
                Objects.equals(politics, resumeVo.politics) &&
                Objects.equals(health, resumeVo.health) &&
                Objects.equals(college, resumeVo.college) &&
                Objects.equals(education, resumeVo.education) &&
                Objects.equals(major, resumeVo.major) &&
                Objects.equals(graduateTime, resumeVo.graduateTime) &&
                Objects.equals(email, resumeVo.email) &&
                Objects.equals(studentContinueTime, resumeVo.studentContinueTime) &&
                Objects.equals(majorCourse, resumeVo.majorCourse) &&
                Objects.equals(credential, resumeVo.credential) &&
                Objects.equals(selfEvaluation, resumeVo.selfEvaluation);
    }

    @Override
    public int hashCode() {

        return Objects.hash(sno, sname, gender, nationality, birthday, city, politics, health, college, education, major, graduateTime, email, studentContinueTime, majorCourse, credential, selfEvaluation);
    }
}
