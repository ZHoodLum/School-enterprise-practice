package com.school.dao;

import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class RegisterDao extends HibernateDaoSupport {
    /***
     *企业信息注册
     * @param evo
     * @return
     */
    public boolean EnterRegister(EnterpriseVo evo){
        this.getHibernateTemplate().save(evo);
        return true;
    }
    /***
     *
     * @param tvo
     * @return
     */
    //教师信息注册
    public boolean TeacherRegister(TeacherVo tvo){
        this.getHibernateTemplate().save(tvo);
        return true;
    }
    //学生信息注册
    public boolean StudentRegister(StudentinfoVo svo){
        this.getHibernateTemplate().save(svo);
        return true;
    }
}
