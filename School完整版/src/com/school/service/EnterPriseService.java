package com.school.service;

import com.school.dao.EnterPriseDao;
import com.school.vo.EnterpriseVo;

import java.util.List;

public class EnterPriseService {
    public EnterPriseDao getEnterPriseDao() {
        return enterPriseDao;
    }

    public void setEnterPriseDao(EnterPriseDao enterPriseDao) {
        this.enterPriseDao = enterPriseDao;
    }

    private EnterPriseDao enterPriseDao;
   //查询全部
    public List<EnterpriseVo> save(EnterpriseVo evo){
        return enterPriseDao.save();
    }
    //查询单值
    public EnterpriseVo findOne(EnterpriseVo eid){
        return enterPriseDao.findOne(eid);
    }
    //添加企业信息
    public boolean Add(EnterpriseVo evo){
        return enterPriseDao.EnterPriseAdd(evo);
    }
    //删除企业信息
    public boolean Delete(EnterpriseVo enterpriseVos)
    {
        return enterPriseDao.Delete(enterpriseVos);
    }
    //评分
    public List<EnterpriseVo> saveOne(String en){
        return enterPriseDao.saveOne(en);
    }
    public List<EnterpriseVo> saveOneId(String en){
        return enterPriseDao.saveOneId(en);
    }
}
