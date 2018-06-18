package com.school.dao;

import com.school.vo.JobinfoVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class JobDao extends HibernateDaoSupport {
    private List<JobinfoVo> list;

    //招聘信息添加
    /***
     *
     * @param jvo
     * @return
     */
    @Transactional(readOnly = false)
    public boolean JobAdd(JobinfoVo jvo){
        this.getHibernateTemplate().save(jvo);
        return true;
    }
    //管理员查询未通过审核的招聘信息
    public List<JobinfoVo> JobCheck(){
         list=(List<JobinfoVo>)this.getHibernateTemplate().find("from JobinfoVo WHERE eCheck=?",new Object[]{"未审核"});
        return list;
    }


    //招聘信息审核通过
   /* @Transactional(readOnly = false)
    public boolean Job_Check(int j_id){
        this.getHibernateTemplate().update();
    }*/
   //招聘信息查询
    /***
     *
     * @param jvo
     * @return
     */
    public List<JobinfoVo> JobSelectAll(){
        list= (List<JobinfoVo>) this.getHibernateTemplate().find("from JobinfoVo ");
        return  list;
    }
    //招聘信息详情

    /***
     *
     * @param j_id
     * @return
     */
    public JobinfoVo JobSelectOne(int jid){
        String sql="from JobinfoVo where jid=?";
        list=(List<JobinfoVo>)this.getHibernateTemplate().find(sql ,new Object[]{jid});
        return  list.get(0);
    }

}
