package com.school.service;


import com.school.dao.TeacherDao;
import com.school.vo.TeacherVo;

import java.util.List;


public class TeacherService {

    public TeacherDao getTeacherDao() {
        return teacherDao;
    }

    public void setTeacherDao(TeacherDao teacherDao) {
        this.teacherDao = teacherDao;
    }

    private TeacherDao teacherDao;
    //查询全部教师信息
    public List<TeacherVo> save(TeacherVo tvo){
        return teacherDao.TeacherSave();
    }
    //添加教师信息（注册）
    public boolean Add(TeacherVo tvo) {
        return  teacherDao.TeacherAdd(tvo);
    }

}
