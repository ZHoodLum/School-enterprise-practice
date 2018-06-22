package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.school.service.JobService;
import com.school.utils.WebUtils;
import com.school.vo.JobinfoVo;
import com.school.vo.StudentinfoVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public class JobAction extends ActionSupport implements SessionAware{
    private JobService jobService;
    private List<JobinfoVo> listJob;
    private int jid;
    private JobinfoVo jobinfoVo;
    private Map<String,Object> session;

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

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
        jobinfoVo.setjId(WebUtils.makeUUID());
        jobinfoVo.seteCheck("未审核");
        jobService.JobInfoAdd(jobinfoVo);
        return SUCCESS;
    }
    //主页查询的招聘信息
    public String MainSelect() throws Exception{
        listJob=jobService.JobSelect();
        if (listJob!=null){
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("listJob", listJob);
            return SUCCESS;
        }
       return ERROR;
    }
    //查询招聘信息详情
    public String JobSelectOne() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        int jid=Integer.parseInt(request.getParameter("jid"));
        List<JobinfoVo> jobInfoList=jobService.getOneJobInfo(jid);
        session.put("jobInfoList",jobInfoList);
        return SUCCESS;
    }
    //提交简历
    public String applyResume() throws Exception{
        List<StudentinfoVo> studenginfo= (List<StudentinfoVo>) session.get("listStudent");
        int sno=studenginfo.get(0).getSno();
        HttpServletRequest request = ServletActionContext.getRequest();
        int jid=Integer.parseInt(request.getParameter("jid"));
        jobService.applyResume(sno,jid);
        return SUCCESS;
    }

}
