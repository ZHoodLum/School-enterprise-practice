package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LogooutAction extends ActionSupport{

    HttpServletRequest request= ServletActionContext.getRequest();
    HttpSession session=request.getSession();

    public String everyOneLogout() throws Exception{
        session.invalidate();
        return SUCCESS;
    }
}
