package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.ResumeService;
import com.school.vo.EnterpriseVo;
import com.school.vo.ResumeVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class ResumeAction extends ActionSupport implements SessionAware{
    private ResumeService resumeService;
    private ResumeVo resumeVo;
    private Map<String,Object> session;

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public ResumeVo getResumeVo() {
        return resumeVo;
    }

    public void setResumeVo(ResumeVo resumeVo) {
        this.resumeVo = resumeVo;
    }

    public ResumeService getResumeService() {
        return resumeService;
    }

    public void setResumeService(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    public String check() throws Exception{
        HttpServletRequest request=ServletActionContext.getRequest();
        int sno=Integer.parseInt(request.getParameter("sno"));
        resumeService.checkSno(sno);
        return NONE;
    }
    //添加简历信息
    public String addNewResume() throws Exception{
        resumeService.addNewResume(resumeVo);
        return SUCCESS;
    }
    //查询申请当前企业的学生的简历
    public String getOneResume() throws Exception{
        HttpServletRequest request = ServletActionContext.getRequest();
        int sno=Integer.parseInt(request.getParameter("sno"));
        List<ResumeVo> resumeList=resumeService.getOneResume(sno);
        session.put("resumeList",resumeList);
        return SUCCESS;
    }
    //删除申请列表中的信息
    public String deleteStudentToEnterPrise() throws Exception{
        HttpServletRequest request = ServletActionContext.getRequest();
        int sno=Integer.parseInt(request.getParameter("sno"));
        resumeService.deleteStudentToEnterPrise(sno);
        return NONE;
    }

    //把学生信息添加到企业2中
    public String addStudentToEnterPrise(){
        HttpServletRequest request = ServletActionContext.getRequest();
        int sno=Integer.parseInt(request.getParameter("sno"));
        List<EnterpriseVo> enterlist= (List<EnterpriseVo>) session.get("enterlist");
        int eid=enterlist.get(0).getEid();
        System.out.printf("eid="+eid);
        resumeService.addStudentToEnterPrise(sno,eid);
        return SUCCESS;
    }

}
