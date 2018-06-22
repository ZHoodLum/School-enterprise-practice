package com.school.service;

import com.school.dao.*;
import com.school.vo.*;

import java.util.List;

public class UserService {
    private UserDao userDao;
    private EnterPriseDao enterPriseDao;
    private TeacherDao teacherDao;
    private StudentInfoDao studentInfoDao;
    private Enterprise_Studentinfo2Dao e_s2Dao;
    private Teacher_StudentInfoDao t_sDao;

    public Teacher_StudentInfoDao getT_sDao() {
        return t_sDao;
    }

    public void setT_sDao(Teacher_StudentInfoDao t_sDao) {
        this.t_sDao = t_sDao;
    }

    public Enterprise_Studentinfo2Dao getE_s2Dao() {
        return e_s2Dao;
    }

    public void setE_s2Dao(Enterprise_Studentinfo2Dao e_s2Dao) {
        this.e_s2Dao = e_s2Dao;
    }

    public StudentInfoDao getStudentInfoDao() {
        return studentInfoDao;
    }

    public void setStudentInfoDao(StudentInfoDao studentInfoDao) {
        this.studentInfoDao = studentInfoDao;
    }

    public TeacherDao getTeacherDao() {
        return teacherDao;
    }

    public void setTeacherDao(TeacherDao teacherDao) {
        this.teacherDao = teacherDao;
    }


    public EnterPriseDao getEnterPriseDao() {
        return enterPriseDao;
    }

    public void setEnterPriseDao(EnterPriseDao enterPriseDao) {
        this.enterPriseDao = enterPriseDao;
    }

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
    //查询所有企业的招聘信息
    public List<JobinfoVo> selectAllJobInfo(){
        List<JobinfoVo> allJobInfoList=userDao.selectAllJobInfo();
        return allJobInfoList;
    }
    //修改招聘信息状态
    public void checkJobInfo(int jid,int status){
        userDao.enterPriseCheck(jid,status);
    }
    //查看某个企业招聘的详细信息
    public List<JobinfoVo> selectJobInfo(int jid){
        List<JobinfoVo> list=userDao.selectJobInfo(jid);
        return list;
    }
    //得到所有有企业的信息
    public List<EnterpriseVo> getAllEnterPrise(){
        List<EnterpriseVo> list=enterPriseDao.getAllEnterPrise();
        return list;
    }
    //删除企业的信息
    public void deleteEnterPrise(int eid){
        EnterpriseStudentinfo2Vo e_s2Vo=e_s2Dao.getOneEnterPrise(eid);
        e_s2Dao.deleteStudentFromE_S2WhereEnterPrise(e_s2Vo);
        EnterpriseVo enterpriseVo=enterPriseDao.findOne(eid);
        enterPriseDao.delete(enterpriseVo);
    }
    //得到教师的信息
    public List<TeacherVo> getAllTeacher(){
        List<TeacherVo> allTeacher=teacherDao.getTeacher();
        return allTeacher;
    }
    //删除教师的信息
    public void deleteTeacher(int tid){
        TeacherStudentinfoVo t_sVo=t_sDao.getOneTeacher(tid);
        t_sDao.deleteFromTeacherStudentinfoVo(t_sVo);
        TeacherVo teacherVo=teacherDao.getOneTeacher(tid);
        teacherDao.delete(teacherVo);
    }
    //查询所有的学生
    public List<StudentinfoVo> getAllStudent(){
        List<StudentinfoVo> list=studentInfoDao.getAllStudent();
        return list;
    }
    //删除学生信息
    public void deleteStudent(int sid){
        EnterpriseStudentinfo2Vo e_s2Vo=e_s2Dao.getOne(sid);
        e_s2Dao.deleteStudentFromE_S2(e_s2Vo);
        TeacherStudentinfoVo t_sVo=t_sDao.getOneStudent(sid);
        t_sDao.deleteFromTeacherStudentinfoVoWherStudent(t_sVo);
        List<StudentinfoVo> list=studentInfoDao.selectStudent(sid);
        studentInfoDao.deleteStduent(list.get(0));
    }
}
