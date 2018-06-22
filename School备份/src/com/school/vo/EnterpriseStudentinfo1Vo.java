package com.school.vo;

import java.util.Objects;

public class EnterpriseStudentinfo1Vo {
    private int id;
    private int eid;
    private int sid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EnterpriseStudentinfo1Vo that = (EnterpriseStudentinfo1Vo) o;
        return id == that.id &&
                eid == that.eid &&
                sid == that.sid;
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, eid, sid);
    }
}
