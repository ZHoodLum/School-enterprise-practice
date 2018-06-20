package com.school.dao;

import com.school.vo.ClassinfoVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

public class ClassDao extends HibernateDaoSupport {
    public int getclassid(String classname){
        String sql="from ClassinfoVo where cname=?";
        List<ClassinfoVo> classlist= (List<ClassinfoVo>) this.getHibernateTemplate().find(sql,classname);
        return classlist.get(0).getCid();
    }
}
