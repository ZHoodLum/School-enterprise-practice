package com.school.service;

import com.school.dao.JobDao;
import com.school.vo.JobinfoVo;

import java.util.List;

public class JobService {
    public JobDao getJobDao() {
        return jobDao;
    }

    public void setJobDao(JobDao jobDao) {
        this.jobDao = jobDao;
    }

    private JobDao jobDao;
    //招聘信息添加
    public boolean JobInfoAdd(JobinfoVo jvo){
        return jobDao.JobAdd(jvo);
    }
    public List<JobinfoVo> JobSelect()
    {
        return jobDao.JobSelectAll();
    }

    public JobinfoVo JobSelectOne(int jid){
        return  jobDao.JobSelectOne(jid);
    }
}
