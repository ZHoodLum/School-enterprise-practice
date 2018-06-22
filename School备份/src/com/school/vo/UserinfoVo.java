package com.school.vo;

import java.util.Objects;

public class UserinfoVo {
    private int uid;
    private String uname;
    private String upwd;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserinfoVo that = (UserinfoVo) o;
        return uid == that.uid &&
                Objects.equals(uname, that.uname) &&
                Objects.equals(upwd, that.upwd);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uid, uname, upwd);
    }
}
