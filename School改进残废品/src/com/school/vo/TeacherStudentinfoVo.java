package com.school.vo;

import java.util.Objects;

public class TeacherStudentinfoVo {
    private int id;
    private Integer tid;
    private Integer sno;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TeacherStudentinfoVo that = (TeacherStudentinfoVo) o;
        return id == that.id &&
                Objects.equals(tid, that.tid) &&
                Objects.equals(sno, that.sno);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, tid, sno);
    }
}
