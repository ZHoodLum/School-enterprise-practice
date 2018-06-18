package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.JobService;
import com.school.vo.JobinfoVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public class JobAction extends ActionSupport{
    private JobService jobService;
    private List<JobinfoVo> listJob;
    private int jid;
    public int getJid() {
        return jid;
    }
    public void setJid(int jid) {
        this.jid = jid;
    }
    public JobinfoVo getJobinfoVo() {
        return jobinfoVo;
    }
    public void setJobinfoVo(JobinfoVo jobinfoVo) {
        this.jobinfoVo = jobinfoVo;
    }
    private JobinfoVo jobinfoVo;
    public JobService getJobService() {
        return jobService;
    }
    public void setJobService(JobService jobService) {
        this.jobService = jobService;
    }
    public List<JobinfoVo> getListJob() {
        return listJob;
    }
    public void setListJob(List<JobinfoVo> listJob) {
        this.listJob = listJob;
    }
    //添加招聘信息
    public String JobInfoAdd() throws Exception {
        jobService.JobInfoAdd(jobinfoVo);
        return SUCCESS;
    }
    public String MainSelect() throws Exception{
        listJob=jobService.JobSelect();
        if (listJob!=null){
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("listJob", listJob);
           // session.put("listJob","listJob");
            return SUCCESS;
        }
       return ERROR;
    }
    //查询招聘信息详情
    public String JobSelectOne() throws Exception {
         jobinfoVo=jobService.JobSelectOne(jid);
         if (jobinfoVo!=null){
             HttpServletRequest request = ServletActionContext.getRequest();
             HttpSession session = request.getSession();
             session.setAttribute("listJobs", listJob);
             return SUCCESS;
         }
        return INPUT;
    }
}
