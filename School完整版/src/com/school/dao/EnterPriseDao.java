package com.school.dao;

import com.school.vo.EnterpriseVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class EnterPriseDao  extends HibernateDaoSupport{

    //查询全部企业信息
    public List<EnterpriseVo> getAllEnterPrise() {
        String sql="from EnterpriseVo";
        List<EnterpriseVo> list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql);
        return list;
    }
    //根据企业编号查询单值
    public EnterpriseVo findOne(int eid){
        String sql="from EnterpriseVo where eid=?";
        List<EnterpriseVo>  list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,eid);
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
    public boolean delete(EnterpriseVo enterpriseVos){
        this.getHibernateTemplate().delete(enterpriseVos);
        return true;

    }

    public List<EnterpriseVo> saveOne(String ename) {
        String sql="from EnterpriseVo where ename=?";
        List<EnterpriseVo>  list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,new Object[]{ename});
        return list;
    }
    public List<EnterpriseVo> saveOneId(String eid) {
        String sql="from EnterpriseVo where eid=?";
        int s=Integer.valueOf(eid);
        List<EnterpriseVo>  list = (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,new Object[]{s});
        return list;
    }

    public int getEnterPriseForEname(String ename){
        String sql="from EnterpriseVo where ename=?";
        System.out.printf("EnterPriseDao中的ename"+ename);
        List<EnterpriseVo> list= (List<EnterpriseVo>) this.getHibernateTemplate().find(sql,ename);
        return list.get(0).getEid();
    }
}
