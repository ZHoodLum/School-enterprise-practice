package com.school.dao;

import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class TeacherDao extends HibernateDaoSupport {
    //查询全部教师信息
    public List<TeacherVo> TeacherSave() {
        String sql = "from TeacherVo";
        List<TeacherVo> list = (List<TeacherVo>) this.getHibernateTemplate().find(sql);
        return list;
    }
    //删除教师信息
    @Transactional(readOnly = false)
    /**
     * 允许进行查询以外的数据库操作
     */
    public boolean Delete(TeacherVo teacherVos) {
        this.getHibernateTemplate().delete(teacherVos);
        return true;

    }
   //修改教师信息
    @Transactional(readOnly = false)
    public boolean updateCroom(TeacherVo tid) {
        String sql="update StudentVo set tname=?,tpwd=?,t_college=?,t_gender=?,t_job,tphone where tid=?";
        this.getHibernateTemplate().update(sql,new Object[]{});
        return true;
    }
    //教师信息添加
    @Transactional(readOnly = false)
    public boolean TeacherAdd(TeacherVo evo){
        this.getHibernateTemplate().save(evo);
        return true;
    }
}

