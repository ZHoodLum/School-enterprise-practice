package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.RegisterService;
import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;

public class RegisterAction extends ActionSupport {

    private TeacherVo tvo;
    private RegisterService registerService;
    private EnterpriseVo evo;

    public RegisterService getRegisterService() {
        return registerService;
    }

    public void setRegisterService(RegisterService registerService) {
        this.registerService = registerService;
    }
    public EnterpriseVo getEvo() {
        return evo;
    }
    public void setEvo(EnterpriseVo evo) {
        this.evo = evo;
    }

    public TeacherVo getTvo() {
        return tvo;
    }

    public void setTvo(TeacherVo tvo) {
        this.tvo = tvo;
    }

    //企业注册
    public String EnterRegister() throws Exception {
        registerService.EnterRegister(evo);
        return SUCCESS;
    }
    //教师注册
    public String TeacherRegister() throws Exception {
        registerService.TeacherRegister(tvo);
        return SUCCESS;
    }

    //学生注册
    //管理员注册
}
