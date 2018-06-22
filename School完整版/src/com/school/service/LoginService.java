package com.school.service;

import com.school.dao.LoginDao;
import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;

import java.util.List;

public class LoginService {
    private LoginDao loginDao;
    public LoginDao getLoginDao() {
        return loginDao;
    }
    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }
   //企业登录
    public List<EnterpriseVo> enterLogins(String name,String pwd){
        return loginDao.enterLogins(name,pwd);
    }
    //教师登录
    public List<TeacherVo> teacherLogins(String name, String pwd){
        return loginDao.teacherLogin(name, pwd);
    }
    //学生登录
    public List<StudentinfoVo> StudentLogin(String name,String pwd){
        return loginDao.studentLogin(name, pwd);
    }
    //管理员登陆
    public boolean userinfoLogin(String name, String pwd){
        return loginDao.userLogin(name,pwd);
    }
}
