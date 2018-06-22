package com.school.service;

import com.school.dao.ClassDao;
import com.school.dao.RegisterDao;
import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import com.school.vo.UserinfoVo;

public class RegisterService {
    public RegisterDao getRegisterDao() {
        return registerDao;
    }
    public void setRegisterDao(RegisterDao registerDao) {
        this.registerDao = registerDao;
    }

    private RegisterDao registerDao;
    private ClassDao classDao;

    public ClassDao getClassDao() {
        return classDao;
    }

    public void setClassDao(ClassDao classDao) {
        this.classDao = classDao;
    }

    //企业注册
    public void enterRegister(EnterpriseVo evo){
        registerDao.enterRegister(evo);
    }

    //老师注册
    public void teacherRegister(TeacherVo tvo){
       registerDao.teacherRegister(tvo);
    }

    //学生注册
    public void studentinfoRegister(StudentinfoVo studentinfoVo){
        int cid=classDao.getclassid(studentinfoVo.getMajor());
        studentinfoVo.setCid(cid);
        registerDao.studentRegister(studentinfoVo);
    }

    //管理员注册
    public void userinfoRegister(UserinfoVo userinfoVo){
        registerDao.userinfoRegister(userinfoVo);
    }
}
