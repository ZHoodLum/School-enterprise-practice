package com.school.dao;

import com.school.vo.JobinfoVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class JobDao extends HibernateDaoSupport {
    private List<JobinfoVo> list;

    //招聘信息添加
    public boolean JobAdd(JobinfoVo jvo){
        this.getHibernateTemplate().save(jvo);
        return true;
    }
    //管理员查询未通过审核的招聘信息
    public List<JobinfoVo> JobCheck(){
         list=(List<JobinfoVo>)this.getHibernateTemplate().find("from JobinfoVo WHERE eCheck=?",new Object[]{"未审核"});
        return list;
    }
   //招聘信息查询
    public List<JobinfoVo> JobSelectAll(){
        list= (List<JobinfoVo>) this.getHibernateTemplate().find("from JobinfoVo ");
        return  list;
    }
    public List<JobinfoVo> JobSelectOne(int jid){
        String sql="from JobinfoVo where jId=?";
        list=(List<JobinfoVo>)this.getHibernateTemplate().find(sql ,jid);
        return  list;
    }

    public String getOneEnterPrise(int jid){
        String sql="from JobinfoVo where jId=?";
        list= (List<JobinfoVo>) this.getHibernateTemplate().find(sql,jid);
        return list.get(0).getEname();
    }


}
