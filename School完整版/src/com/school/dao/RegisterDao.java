package com.school.dao;

import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import com.school.vo.UserinfoVo;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class RegisterDao extends HibernateDaoSupport {
    //企业注册
    public void enterRegister(EnterpriseVo evo){
        Boolean a= (Boolean) this.getHibernateTemplate().save(evo);
    }
    //教师信息注册
    public void teacherRegister(TeacherVo tvo){
        this.getHibernateTemplate().save(tvo);
    }
    //学生信息注册
    public void studentRegister(StudentinfoVo studentinfoVo){
        this.getHibernateTemplate().save(studentinfoVo);
    }
    //管理员注册
    public void userinfoRegister(UserinfoVo uVo){
       this.getHibernateTemplate().save(uVo);
    }
}
