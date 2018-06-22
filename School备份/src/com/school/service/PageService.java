package com.school.service;

import com.school.dao.PageDao;
import com.school.utils.PageBean;
import com.school.vo.JobinfoVo;
import com.school.vo.StudentinfoVo;

import java.util.List;

public class PageService {
    private PageDao pageDao;

    public PageDao getPageDao() {
        return pageDao;
    }

    public void setPageDao(PageDao pageDao) {
        this.pageDao = pageDao;
    }

    public PageBean<StudentinfoVo> findByPage(int page,int cid) {
        PageBean<StudentinfoVo> pageBean =new PageBean<StudentinfoVo>();
        pageBean.setPage(page);
        int limit=10;
        pageBean.setLimit(limit);
        int totalCount=pageDao.findTotalCount(cid);
        pageBean.setTotalCount(totalCount);
        int totalpage=(int)Math.ceil(totalCount/limit);
        pageBean.setTotalPage(totalpage);
        //每页显示的数据集合
        int begin=(page-1)*limit;
        List<StudentinfoVo> list=pageDao.findByPageId(begin,limit,cid);
        pageBean.setList(list);
        return pageBean;
    }

    public PageBean<JobinfoVo> findByPage(int page){
        PageBean<JobinfoVo> pageBean = new PageBean<JobinfoVo>();
        pageBean.setPage(page);
        int limit=5;
        pageBean.setLimit(limit);
        int totalCount=pageDao.findTotalCount();
        pageBean.setTotalCount(totalCount);
        int totalpage=(int)Math.ceil(totalCount/limit)+1;
        pageBean.setTotalPage(totalpage);
        //每页显示的数据集合
        int begin=(page-1)*limit;
        List<JobinfoVo> list=pageDao.findByPageId(begin,limit);
        pageBean.setList(list);
        return pageBean;
    }
}
