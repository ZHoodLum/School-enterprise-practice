package com.school.service;

import com.school.dao.LoginDao;
import com.school.vo.EnterpriseVo;
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
   /* public boolean enterLogin(EnterpriseVo list){
        return loginDao.enterLogin(list);
    }*/
   //企业登录
    public List<EnterpriseVo> enterLogins(String name,String pwd){
        return loginDao.enterLogins(name,pwd);
    }
    //教师登录
    public List<TeacherVo> teacherLogins(String name, String pwd){
        return loginDao.teacherLogin(name, pwd);
    }
  //  public boolean
}
