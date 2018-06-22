package com.school.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.school.service.PageService;
import com.school.utils.PageBean;
import com.school.vo.JobinfoVo;
import com.school.vo.StudentinfoVo;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class PageAction extends ActionSupport {
    private PageService pageService;


    public PageService getPageService() {
        return pageService;
    }

    public void setPageService(PageService pageService) {
        this.pageService = pageService;
    }
    public String showAll(){
        HttpServletRequest request= ServletActionContext.getRequest();
        int cid=Integer.parseInt(request.getParameter("cid"));
        int page=Integer.parseInt(request.getParameter("page"));
        request.setAttribute("cid",cid);
        PageBean<StudentinfoVo> pagebean=pageService.findByPage(page,cid);
        request.setAttribute("pageBean",pagebean);
        return SUCCESS;
    }
    //主界面招聘信息
    public String getAllJobInfo(){
        HttpServletRequest request= ServletActionContext.getRequest();
        int page=Integer.parseInt(request.getParameter("page"));
        PageBean<JobinfoVo> pagebean=pageService.findByPage(page);
        request.setAttribute("pageBean",pagebean);
        return SUCCESS;
    }
}
