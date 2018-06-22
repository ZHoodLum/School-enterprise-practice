package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.UserService;
import com.school.vo.*;
import com.sun.net.httpserver.HttpServer;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class UserAction extends ActionSupport implements SessionAware{
    private UserService userService;
    private Map<String,Object> session;

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session=session;
    }
    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    //查看所有企业发布的招聘信息
    public String selectAllJobInfo() throws Exception{
        List<JobinfoVo> allJobInfoList=userService.selectAllJobInfo();
        session.put("allJobInfoList",allJobInfoList);
        return SUCCESS;
    }

    //查看招聘信息的详情
    public String selectJobInfo() throws Exception{
        HttpServletRequest request= ServletActionContext.getRequest();
        int jid=Integer.parseInt(request.getParameter("jid"));
        List<JobinfoVo> jobInfolist=userService.selectJobInfo(jid);
        session.put("jobInfolist",jobInfolist);
        int status1=1;int status2=2;
        session.put("status1",status1);session.put("status2",status2);
        return SUCCESS;
    }

    //审核企业发出的招聘信息进行审核
    public String checkJobInfo() throws Exception{
        HttpServletRequest request= ServletActionContext.getRequest();
        int jid=Integer.parseInt(request.getParameter("jid"));
        int status=Integer.parseInt(request.getParameter("status"));
        userService.checkJobInfo(jid,status);
        return SUCCESS;
    }

    //查询所有企业信息
    public String getAllEnterPrise() throws Exception{
        List<EnterpriseVo> allEnterPriseList=userService.getAllEnterPrise();
        session.put("allEnterPriseList",allEnterPriseList);
        return SUCCESS;
    }
    //删除企业信息
    public String deleteEnterPrise() throws Exception{
        HttpServletRequest request= ServletActionContext.getRequest();
        int eid=Integer.parseInt(request.getParameter("eid"));
        userService.deleteEnterPrise(eid);
        return SUCCESS;
    }

    //得到所有的教师信息
    public String getAllTeacher() throws Exception{
        List<TeacherVo> allTeacher=userService.getAllTeacher();
        session.put("allTeacher",allTeacher);
        return SUCCESS;
    }
    //删除教师信息
    public String deleteTeacher() throws Exception{
        HttpServletRequest request= ServletActionContext.getRequest();
        int tid=Integer.parseInt(request.getParameter("tid"));
        userService.deleteTeacher(tid);
        return SUCCESS;
    }
    //查询所有的学生
    public String getAllStudent() throws Exception{
        List<StudentinfoVo> allStudent=userService.getAllStudent();
        session.put("allStudent",allStudent);
        return SUCCESS;
    }
    //删除学生
    public String deleteStudent() throws Exception{
        HttpServletRequest request= ServletActionContext.getRequest();
        int sid=Integer.parseInt(request.getParameter("sid"));
        userService.deleteStudent(sid);
        return SUCCESS;
    }

}
