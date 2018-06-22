package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.StudentInfoService;
import com.school.vo.StudentinfoVo;

public class StudentInfoUpdateAction extends ActionSupport{

    private StudentinfoVo studentInfoVo;

    public StudentinfoVo getStudentInfoVo() {
        return studentInfoVo;
    }

    public void setStudentInfoVo(StudentinfoVo studentInfoVo) {
        this.studentInfoVo = studentInfoVo;
    }

    private StudentInfoService studentInfoService;

    public StudentInfoService getStudentInfoService() {
        return studentInfoService;
    }

    public void setStudentInfoService(StudentInfoService studentInfoService) {
        this.studentInfoService = studentInfoService;
    }

    public String studentInfoUpdate() throws Exception{
        studentInfoService.update(studentInfoVo);
        return SUCCESS;
    }
}
