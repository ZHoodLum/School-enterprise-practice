package com.school.service;

import com.school.dao.EnterPriseDao;
import com.school.dao.Enterprise_Studentinfo1Dao;
import com.school.dao.JobDao;
import com.school.vo.JobinfoVo;

import java.util.List;

public class JobService {
    private JobDao jobDao;
    private Enterprise_Studentinfo1Dao e_s1Dao;
    private EnterPriseDao enterPriseDao;

    public EnterPriseDao getEnterPriseDao() {
        return enterPriseDao;
    }

    public void setEnterPriseDao(EnterPriseDao enterPriseDao) {
        this.enterPriseDao = enterPriseDao;
    }

    public Enterprise_Studentinfo1Dao getE_s1Dao() {
        return e_s1Dao;
    }

    public void setE_s1Dao(Enterprise_Studentinfo1Dao e_s1Dao) {
        this.e_s1Dao = e_s1Dao;
    }

    public JobDao getJobDao() {
        return jobDao;
    }

    public void setJobDao(JobDao jobDao) {
        this.jobDao = jobDao;
    }
    //招聘信息添加
    public boolean JobInfoAdd(JobinfoVo jvo){
        return jobDao.JobAdd(jvo);
    }


    public List<JobinfoVo> JobSelect()
    {
        return jobDao.JobSelectAll();
    }

    public List<JobinfoVo> JobSelectOne(int jid){
        return  jobDao.JobSelectOne(jid);
    }

    public List<JobinfoVo> getOneJobInfo(int jid){
        return (List<JobinfoVo>) jobDao.JobSelectOne(jid);
    }

    //提交简历
    public void applyResume(int sno,int jid){
        String ename=jobDao.getOneEnterPrise(jid);
        int eid=enterPriseDao.getEnterPriseForEname(ename);
        e_s1Dao.applyResume(sno,eid);
    }
}
