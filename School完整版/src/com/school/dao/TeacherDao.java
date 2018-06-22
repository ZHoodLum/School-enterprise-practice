package com.school.dao;

import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TeacherDao extends HibernateDaoSupport {
    //查询全部教师信息
    public List<TeacherVo> getTeacher() {
        String sql = "from TeacherVo";
        List<TeacherVo> list = (List<TeacherVo>) this.getHibernateTemplate().find(sql);
        return list;
    }

    //查询单个老师的信息
    public TeacherVo getOneTeacher(int tid){
        String sql="from TeacherVo where tid=?";
        List<TeacherVo> list= (List<TeacherVo>) this.getHibernateTemplate().find(sql,tid);
        return list.get(0);
    }

    //删除教师信息
    public boolean delete(TeacherVo teacherVo) {
        this.getHibernateTemplate().delete(teacherVo);
        return true;

    }
   //修改教师信息
    public boolean updateCroom(TeacherVo tid) {
        String sql="update StudentVo set tname=?,tpwd=?,t_college=?,t_gender=?,t_job,tphone where tid=?";
        this.getHibernateTemplate().update(sql,new Object[]{});
        return true;
    }
    //教师信息添加
    public boolean TeacherAdd(TeacherVo evo){
        this.getHibernateTemplate().save(evo);
        return true;
    }

    //查询实习学生的信息中需要老师的姓名
    public Map<String,List<TeacherVo>> getAllTeacherName(Integer[] tid){
        String sql="from TeacherVo where tid=?";
        Map<String,List<TeacherVo>> allTeacherinfo=new HashMap<String,List<TeacherVo>>();
        for(int i=0;i<tid.length;i++){
            List<TeacherVo> teacherlist=new ArrayList<TeacherVo>();
            teacherlist= (List<TeacherVo>) this.getHibernateTemplate().find(sql,tid[i]);
            allTeacherinfo.put("teacher"+i,teacherlist);
        }
        return allTeacherinfo;
    }
}

