package com.school.dao;

import com.school.utils.WebUtils;
import com.school.vo.EnterpriseStudentinfo1Vo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

public class Enterprise_Studentinfo1Dao extends HibernateDaoSupport{
    //提交简历
    public void applyResume(int sno,int eid){
        EnterpriseStudentinfo1Vo e_s1Vo=new EnterpriseStudentinfo1Vo();
        e_s1Vo.setId(WebUtils.makeUUID());
        e_s1Vo.setSid(sno);
        e_s1Vo.setEid(eid);
        this.getHibernateTemplate().save(e_s1Vo);
    }
    public List<EnterpriseStudentinfo1Vo> selectStudentApply(int eid){
        String sql="from EnterpriseStudentinfo1Vo where eid=?";
        List<EnterpriseStudentinfo1Vo> e_s1VoList= (List<EnterpriseStudentinfo1Vo>) this.getHibernateTemplate().find(sql,eid);
        return e_s1VoList;
    }
    public void deleteStudentToEntPrise(int sno,int eid){
        String sql="from EnterpriseStudentinfo1Vo where sid=? and eid=?";
        List<EnterpriseStudentinfo1Vo> e_s1= (List<EnterpriseStudentinfo1Vo>) this.getHibernateTemplate().find(sql,new Object[]{sno,eid});
        this.getHibernateTemplate().delete(e_s1);
    }
    public void deleteStudentToEntPrise(int sno){
        String sql="from EnterpriseStudentinfo1Vo where sid="+sno;
        List<EnterpriseStudentinfo1Vo> e_s1= (List<EnterpriseStudentinfo1Vo>) this.getHibernateTemplate().find(sql);
        this.getHibernateTemplate().delete(e_s1.get(0));
    }
}
