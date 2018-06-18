package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.school.service.TeacherService;
import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public class TeacherAction extends ActionSupport  implements ServletRequestAware,SessionAware, ModelDriven<TeacherVo> {
    private TeacherVo teacherVo;
    private TeacherVo teacherVos = new TeacherVo();
    private Map<String, Object> session;
    private HttpServletRequest request;
    private List<TeacherVo> list;
    private TeacherService teacherService;
    public TeacherService getTeacherService() {
        return teacherService;
    }
    @Override
    public TeacherVo getModel() {
        return teacherVos;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request=request;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session=session;
    }
    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }
    public TeacherVo getTeacherVo() {
        return teacherVo;
    }
    public void setTeacherVo(TeacherVo teacherVo) {
        this.teacherVo = teacherVo;
    }
    //查询全部教师信息
    public String Select() throws Exception {
        list = teacherService.save(teacherVo);
        System.out.println("success");
        if (list != null) {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }
    //


}
