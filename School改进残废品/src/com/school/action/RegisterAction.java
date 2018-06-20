package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.RegisterService;
import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import com.school.vo.UserinfoVo;

public class RegisterAction extends ActionSupport {

    private TeacherVo tvo;
    private RegisterService registerService;
    private EnterpriseVo evo;
    private StudentinfoVo studentinfoVo;
    private UserinfoVo userinfoVo;

    public StudentinfoVo getStudentinfoVo() {
        return studentinfoVo;
    }

    public void setStudentinfoVo(StudentinfoVo studentinfoVo) {
        this.studentinfoVo = studentinfoVo;
    }

    public UserinfoVo getUserinfoVo() {
        return userinfoVo;
    }

    public void setUserinfoVo(UserinfoVo userinfoVo) {
        this.userinfoVo = userinfoVo;
    }

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
    public String enterRegister() throws Exception {
        registerService.enterRegister(evo);
        return SUCCESS;
    }
    //教师注册
    public String teacherRegister() throws Exception {
        registerService.teacherRegister(tvo);
        return SUCCESS;
    }

    //学生注册
    public String studentRegister() throws Exception{
        registerService.studentinfoRegister(studentinfoVo);
        return SUCCESS;
    }
    //管理员注册
    public String userinfoRegister() throws Exception{
        registerService.userinfoRegister(userinfoVo);
        return SUCCESS;
    }
}
