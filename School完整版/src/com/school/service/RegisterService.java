package com.school.service;

import com.school.dao.RegisterDao;
import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;

public class RegisterService {
    public RegisterDao getRegisterDao() {
        return registerDao;
    }

    public void setRegisterDao(RegisterDao registerDao) {
        this.registerDao = registerDao;
    }

    private RegisterDao registerDao;

    public boolean EnterRegister(EnterpriseVo evo){
        return registerDao.EnterRegister(evo);
    }

    /***
     *
     * @param tvo
     * @return
     */
    public boolean TeacherRegister(TeacherVo tvo){
       return registerDao.TeacherRegister(tvo);
    }
}
