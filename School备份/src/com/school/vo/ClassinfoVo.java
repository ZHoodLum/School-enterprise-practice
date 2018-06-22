package com.school.vo;

import java.util.Objects;

public class ClassinfoVo {
    private int cid;
    private String cname;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ClassinfoVo that = (ClassinfoVo) o;
        return cid == that.cid &&
                Objects.equals(cname, that.cname);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cid, cname);
    }
}
