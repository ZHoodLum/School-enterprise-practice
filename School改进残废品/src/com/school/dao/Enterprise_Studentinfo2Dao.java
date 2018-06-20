package com.school.dao;

import com.school.utils.WebUtils;
import com.school.vo.EnterpriseStudentinfo2Vo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

public class Enterprise_Studentinfo2Dao extends HibernateDaoSupport{
    public List getAllStudentId(int eid){
        String sql="from EnterpriseStudentinfo2Vo where eid=?";
        List<EnterpriseStudentinfo2Vo> e_s2= (List<EnterpriseStudentinfo2Vo>) this.getHibernateTemplate().find(sql,eid);
        return e_s2;
    }

    //得到某个学生的信息
    public EnterpriseStudentinfo2Vo getOne(int sid){
        String sql="from EnterpriseStudentinfo2Vo where sid=?";
        List<EnterpriseStudentinfo2Vo> list= (List<EnterpriseStudentinfo2Vo>) this.getHibernateTemplate().find(sql,sid);
        return list.get(0);
    }

    //删除
    public void deleteStudentFromE_S2(EnterpriseStudentinfo2Vo e_s2Vo){
        this.getHibernateTemplate().delete(e_s2Vo);
    }

    //得到某个企业的信息
    public EnterpriseStudentinfo2Vo getOneEnterPrise(int eid){
        String sql="from EnterpriseStudentinfo2Vo where eid=?";
        List<EnterpriseStudentinfo2Vo> list= (List<EnterpriseStudentinfo2Vo>) this.getHibernateTemplate().find(sql,eid);
        return list.get(0);
    }

    //删除
    public void deleteStudentFromE_S2WhereEnterPrise(EnterpriseStudentinfo2Vo e_s2Vo){
        this.getHibernateTemplate().delete(e_s2Vo);
    }
    //把某个学生的信息添加到企业学生表2中
    public void addStudentToEnterPrise(int sno,int eid){
        EnterpriseStudentinfo2Vo e_s2Vo=new EnterpriseStudentinfo2Vo();
        e_s2Vo.setId(WebUtils.makeUUID());
        e_s2Vo.setEid(eid);
        e_s2Vo.setSid(sno);
        this.getHibernateTemplate().save(e_s2Vo);
    }

}
