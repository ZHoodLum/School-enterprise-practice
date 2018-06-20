package com.school.service;

import com.school.dao.Enterprise_Studentinfo1Dao;
import com.school.dao.Enterprise_Studentinfo2Dao;
import com.school.dao.ResumeDao;
import com.school.vo.ResumeVo;

import java.io.IOException;
import java.util.List;

public class ResumeService {
    private ResumeDao resumeDao;
    private Enterprise_Studentinfo2Dao e_s2Dao;

    public Enterprise_Studentinfo1Dao getE_s1Dao() {
        return e_s1Dao;
    }

    public void setE_s1Dao(Enterprise_Studentinfo1Dao e_s1Dao) {
        this.e_s1Dao = e_s1Dao;
    }

    private Enterprise_Studentinfo1Dao e_s1Dao;

    public Enterprise_Studentinfo2Dao getE_s2Dao() {
        return e_s2Dao;
    }

    public void setE_s2Dao(Enterprise_Studentinfo2Dao e_s2Dao) {
        this.e_s2Dao = e_s2Dao;
    }

    public ResumeDao getResumeDao() {
        return resumeDao;
    }

    public void setResumeDao(ResumeDao resumeDao) {
        this.resumeDao = resumeDao;
    }
    //添加某个学生的简历
    public void addNewResume(ResumeVo resumeVo){
        resumeDao.addNewResume(resumeVo);
    }
    //查询某个学生的简历信息
    public List<ResumeVo> getOneResume(int sno){
        List<ResumeVo> resumeList=resumeDao.getOneResume(sno);
        return resumeList;
    }
    //异步提交
    public void checkSno(int sno) throws IOException {
        resumeDao.checkSno(sno);
    }
    //把某个学生的信息添加到企业学生表2中
    public void addStudentToEnterPrise(int sno,int eid){
        e_s2Dao.addStudentToEnterPrise(sno,eid);
        e_s1Dao.deleteStudentToEntPrise(sno,eid);
    }

    //删除企业学生表1中的信息
    public void deleteStudentToEnterPrise(int sno){
        e_s1Dao.deleteStudentToEntPrise(sno);
    }
}
