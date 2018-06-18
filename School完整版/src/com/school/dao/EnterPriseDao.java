package com.school.dao;

import com.school.vo.EnterpriseVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class EnterPriseDao  extends HibernateDaoSupport{
    /**
     *
     * @return
     */
    //查询全部企业信息
    public List<EnterpriseVo> save() {
        String sql="from EnterpriseVo";

        List<EnterpriseVo> list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql);
//		this.hibernateTemplate.save(evo);
        return list;
    }
    //根据企业编号查询单值
    public EnterpriseVo findOne(EnterpriseVo eid){
        String sql="from EnterpriseVo where eid=?";
        List<EnterpriseVo>  list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,new Object[]{eid});
        return  list.get(0);
    }
    /**
     * 增加企业
     */
    public boolean EnterPriseAdd(EnterpriseVo evo){
        this.getHibernateTemplate().save(evo);
        return true;
    }
    //删除企业信息
   @Transactional(readOnly = false)
   /**
    * 允许进行查询以外的数据库操作
    */
    public boolean Delete(EnterpriseVo enterpriseVos){
        this.getHibernateTemplate().delete(enterpriseVos);
        return true;

    }
    /*
    public boolean updateCroom(EnterpriseVo eid) {
        String sql="update StudentVo set s_grade=? where sid=? "
        this.getHibernateTemplate().update(sql,new Object[]{});
        return true;
    }*/
    public List<EnterpriseVo> saveOne(String ename) {
        String sql="from EnterpriseVo where ename=?";

        List<EnterpriseVo>  list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,new Object[]{ename});
//		this.hibernateTemplate.save(evo);
        return list;
    }
    public List<EnterpriseVo> saveOneId(String eid) {
        String sql="from EnterpriseVo where eid=?";
        int s=Integer.valueOf(eid);
        List<EnterpriseVo>  list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,new Object[]{s});
//		this.hibernateTemplate.save(evo);
        return list;
    }
}
