package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.LoginService;
import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public class LoginAction extends ActionSupport implements SessionAware {
    private Map<String, Object> session;
    private LoginService loginService;
    private EnterpriseVo enterpriseVo;
    private String uname;
    private String upwd;
    private String en;
    private String ename;

    private List<TeacherVo> listTeacher;
    private List<StudentinfoVo> listStudent;


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

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    //选择权限登录
    public String ChanceLogin() throws Exception {
        if (en.equals("企业")) {
            List<EnterpriseVo> enterlist = loginService.enterLogins(uname, upwd);
            if (enterlist!=null&&enterlist.size()!=0) {
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("enterlist", enterlist);
                return "enter";
            }else{
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("message", "请输入正确的企业账号密码！如不能正确登陆，请联系管理员");
                return "error";
            }
        } else if (en.equals("教师")) {
            listTeacher = loginService.teacherLogins(uname, upwd);
            if (listTeacher!=null&&listTeacher.size()!=0) {
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("teacher", listTeacher);
                return "teacher";
            }else{
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("message", "请输入正确的教师账号密码！如不能正确登陆，请联系管理员");
                return "error";
            }
        } else if (en.equals("学生")) {
            listStudent = loginService.StudentLogin(uname, upwd);
            if (listStudent != null&&listStudent.size()!=0) {
                session.put("listStudent", listStudent);
                return "student";
            }else{
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("message", "请输入正确的学生账号密码！如不能正确登陆，请联系管理员");
                return "error";
            }
        }
        else if(en.equals("管理员")){
                if(loginService.userinfoLogin(uname,upwd)){
                    return INPUT;
                }else{
                    return "error";
                }
        }
        else {
            return "error";
        }
    }
}



