package com.school.dao;

import com.school.vo.EnterpriseVo;
import com.school.vo.JobinfoVo;
import com.school.vo.TeacherVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

public class UserDao extends HibernateDaoSupport{

    //查看所有企业招聘
    public List<JobinfoVo> selectAllJobInfo(){
        List<JobinfoVo> list= (List<JobinfoVo>) this.getHibernateTemplate().find("from JobinfoVo");
        return list;
    }
    //查看企业招聘信息 详情
    public List<JobinfoVo> selectJobInfo(int jid){
        String sql="from JobinfoVo where jId=?";
        List<JobinfoVo> list= (List<JobinfoVo>) this.getHibernateTemplate().find(sql,jid);
        return list;
    }

    //审核企业
    public void enterPriseCheck(int jid,int status){
        if(status==1){
            this.getHibernateTemplate().bulkUpdate("update JobinfoVo set eCheck='通过' WHERE jId=?",jid);
        }
        if(status==2){
            this.getHibernateTemplate().bulkUpdate("update JobinfoVo set eCheck='不通过' WHERE jId=?",jid);
        }

    }
}
