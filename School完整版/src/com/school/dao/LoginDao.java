package com.school.dao;

import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

public class LoginDao extends HibernateDaoSupport {
    //企业登录

    /***
     *
     * @param name
     * @param pwd
     * @return
     */
    public List<EnterpriseVo> enterLogins(String name,String pwd) {
        int s=Integer.valueOf(name);
        List<EnterpriseVo> list = (List<EnterpriseVo>) this.getHibernateTemplate().find("from EnterpriseVo where eid=? and epwd=?",new Object[]{s,pwd});
        return list;
    }
    //教师登录
    public List<TeacherVo> teacherLogin(String name,String pwd){
       // String sql="";
        int s=Integer.valueOf(name);
        List<TeacherVo> list = (List<TeacherVo>) this.getHibernateTemplate().find("from TeacherVo where tid=? and tpwd=?",new Object[]{s,pwd});
        return list;
    }
    //学生登录
    public  boolean StudentLogin(String name,String pwd){
        String sql="from StudentinfoVo where sno=? and spwd=?";
         int s=Integer.valueOf(name);
        this.getHibernateTemplate().find(sql,new Object[]{s,pwd});
        return true;
        }
        //管理员登录
    public  boolean UserLogin(String name,String pwd){
        String sql="from UserinfoVo where uid=? and upwd=?";
        int s=Integer.valueOf(name);
        this.getHibernateTemplate().find(sql,new Object[]{s,pwd});
        return true;
    }
    }
