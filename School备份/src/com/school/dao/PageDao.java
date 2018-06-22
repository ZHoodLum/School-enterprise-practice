package com.school.dao;

import com.school.utils.PageBean;
import com.school.utils.PageHibernateCallback;
import com.school.vo.JobinfoVo;
import com.school.vo.StudentinfoVo;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.List;

public class PageDao extends HibernateDaoSupport {

    public List<StudentinfoVo> getAllStudent(int cid){
        String sql="from StudentinfoVo where cid="+cid;
        List<StudentinfoVo> studentAllList= (List<StudentinfoVo>) this.getHibernateTemplate().find(sql);
        return studentAllList;
    }
    //查询studentinfoVO中总记录数
    public int findTotalCount(int cid) {
        String hql="select count(*) from StudentinfoVo where cid="+cid;
        List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
        if(list!=null&&list.size()>0){
            return list.get(0).intValue();
        }
        return 0;
    }
    //查询当前页面的学生集合
    public List<StudentinfoVo> findByPageId(int begin, int limit,int cid) {
        String hql="from StudentinfoVo where cid="+cid;
        List<StudentinfoVo> list=(List<StudentinfoVo>) this.getHibernateTemplate().execute((HibernateCallback<StudentinfoVo>) new PageHibernateCallback(hql, new Object[]{}, begin, limit));
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    //查询JobInfoVo中总记录数
    public int findTotalCount() {
        String hql="select count(*) from JobinfoVo ";
        List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
        if(list!=null&&list.size()>0){

            System.out.println("总记录数为"+list.get(0).intValue());

            return list.get(0).intValue();
        }
        return 0;
    }
    //查询当前页面的招聘信息的集合
    public List<JobinfoVo> findByPageId(int begin, int limit) {
        String hql="from JobinfoVo";
        List<JobinfoVo> list=(List<JobinfoVo>) this.getHibernateTemplate().execute((HibernateCallback<JobinfoVo>) new PageHibernateCallback(hql, new Object[]{}, begin, limit));
        for(int i=0;i<list.size();i++){list.get(i).getEname();}
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
