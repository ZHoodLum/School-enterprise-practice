package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.LoginService;
import com.school.vo.EnterpriseVo;
import com.school.vo.TeacherVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public class LoginAction extends ActionSupport implements SessionAware,RequestAware {
    private Map<String, Object> session;
    private LoginService loginService;
    private String uname;
    private String upwd;
    private String en;
    private String ename;
    private List<EnterpriseVo> list;
    private List<TeacherVo> listTeacher;
    public void setRequest(Map<String, Object> request) {
        this.request = request;
    }
    private Map<String, Object> request;
    public List<TeacherVo> getListTeacher() {
        return listTeacher;
    }
    public void setListTeacher(List<TeacherVo> listTeacher) {
        this.listTeacher = listTeacher;
    }
    public LoginService getLoginService() {
        return loginService;
    }
    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }
    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
    public List<EnterpriseVo> getList() {
        return list;
    }
    public void setList(List<EnterpriseVo> list) {
        this.list = list;
    }
    public String getUname() {
        return uname;
    }
    public void setUname(String uname) {
        this.uname = uname;
    }
    public String getUpwd() {
        return upwd;
    }
    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }
    public String getEn() {
        return en;
    }
    public void setEn(String en) {
        this.en = en;
    }
    public EnterpriseVo getEnterpriseVo() {
        return enterpriseVo;
    }
    public void setEnterpriseVo(EnterpriseVo enterpriseVo) {
        this.enterpriseVo = enterpriseVo;
    }
    private EnterpriseVo enterpriseVo;
    public String getEname() {
        return ename;
    }
    public void setEname(String ename) {
        this.ename = ename;
    }
    //选择权限登录
    public String ChanceLogin() throws Exception {
        if (en.equals("企业")) {
            list= loginService.enterLogins(uname, upwd);
            if (list!=null){
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("list", list);
                return "enter";
            }
            else{
                return INPUT;//struts.xml中input的result未设置
            }
        }
       else if(en.equals("教师")){
            listTeacher=loginService.teacherLogins(uname,upwd);
            if (listTeacher!=null){
            session.put("listTeacher","listTeacher");
            return "teacher";
            }
       }
       else if(en.equals("管理员"))
       {

       }
        return INPUT;
    }
}

