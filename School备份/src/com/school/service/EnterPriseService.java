package com.school.service;

import com.school.dao.*;
import com.school.vo.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EnterPriseService {
    private EnterPriseDao enterPriseDao;
    private StudentInfoDao studentInfoDao;
    private TeacherDao teacherDao;
    private Enterprise_Studentinfo1Dao enterprise_studentinfo1;
    private Enterprise_Studentinfo2Dao enterprise_studentinfo2;
    private Teacher_StudentInfoDao teacher_studentinfoDao;

    public Teacher_StudentInfoDao getTeacher_studentinfoDao() {
        return teacher_studentinfoDao;
    }

    public void setTeacher_studentinfoDao(Teacher_StudentInfoDao teacher_studentinfoDao) {
        this.teacher_studentinfoDao = teacher_studentinfoDao;
    }

    public Enterprise_Studentinfo2Dao getEnterprise_studentinfo2() {
        return enterprise_studentinfo2;
    }

    public void setEnterprise_studentinfo2(Enterprise_Studentinfo2Dao enterprise_studentinfo2) {
        this.enterprise_studentinfo2 = enterprise_studentinfo2;
    }

    public Enterprise_Studentinfo1Dao getEnterprise_studentinfo1() {
        return enterprise_studentinfo1;
    }

    public void setEnterprise_studentinfo1(Enterprise_Studentinfo1Dao enterprise_studentinfo1) {
        this.enterprise_studentinfo1 = enterprise_studentinfo1;
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
   //查询全部
    public List<EnterpriseVo> save(){
        return enterPriseDao.getAllEnterPrise();
    }
    //添加企业信息
    public boolean Add(EnterpriseVo evo){
        return enterPriseDao.EnterPriseAdd(evo);
    }
    //评分
    public List<EnterpriseVo> saveOne(String en){
        return enterPriseDao.saveOne(en);
    }
    public List<EnterpriseVo> saveOneId(String en){
        return enterPriseDao.saveOneId(en);
    }
    //企业查询实习的学生信息
    public Map<String,List<StudentinfoVo>> getAllStudent(int eid){
        //得到学生的所有id
        List<EnterpriseStudentinfo2Vo> e_s2list=enterprise_studentinfo2.getAllStudentId(eid);
        Integer[] e_s2_sid=new Integer[e_s2list.size()];
        for(int i=0;i<e_s2list.size();i++){
            e_s2_sid[i]=e_s2list.get(i).getSid();
        }
        //得到所有学生的信息
        Map<String,List<StudentinfoVo>> map=studentInfoDao.getAllEnterPriseStudentInfo(e_s2_sid);
        return map;
    }
    //得到实习学生的老师
    public List<String> getTeacherName(int eid){
        //得到学生的所有id
        List<EnterpriseStudentinfo2Vo> e_s2list=enterprise_studentinfo2.getAllStudentId(eid);
        Integer[] allsid=new Integer[e_s2list.size()];
        for(int i=0;i<e_s2list.size();i++){

            allsid[i]=e_s2list.get(i).getSid();
        }
        //得到老师的id
        Map<String,List<TeacherStudentinfoVo>> allTeacherIdmap=teacher_studentinfoDao.getAllTeacherId(allsid);
        //有一个就会有一个老师 一个老师就会有一个id   allTeacherIdmap中存放的就是一个学生对应的一条teacher_studentinfo的信息
        Integer[] allTid=new Integer[allTeacherIdmap.size()];
        //遍历老师的id
        for(int i=0;i<allTeacherIdmap.size();i++){
            allTid[i]=allTeacherIdmap.get("a"+i).get(0).getTid();
        }

        Map<String,List<TeacherVo>> allTeacherNames=teacherDao.getAllTeacherName(allTid);
        String[] teacherNames=new String[allTeacherNames.size()];
        List<String> teacherNameList=new ArrayList<String>();
        for(int i=0;i<allTeacherNames.size();i++){
            teacherNames[i]=allTeacherNames.get("teacher"+i).get(0).getTname();
        }
        for(int i=0;i<teacherNames.length;i++){
            teacherNameList.add(teacherNames[i]);
        }
        return teacherNameList;
    }
    //修改学生的实习成绩
    public void updateStudentScope(int intsid, int intscope){
        List<StudentinfoVo> list=studentInfoDao.selectStudent(intsid);
        studentInfoDao.updateStudentGrade(list.get(0),intscope);
    }
    //查询申请实习的学生信息
    public Map<String,List<StudentinfoVo>> selectStudentApply(int eid){
        //得到EnterPriseStudentInfoVO1中所有的数据
        List<EnterpriseStudentinfo1Vo> e_s1VoList=enterprise_studentinfo1.selectStudentApply(eid);
        Integer[] allsid=new Integer[e_s1VoList.size()];
        for(int i=0;i<e_s1VoList.size();i++){
            allsid[i]=e_s1VoList.get(i).getSid();
        }
        Map<String,List<StudentinfoVo>> map=studentInfoDao.getAllEnterPriseStudentInfo(allsid);
        return map;
    }
}
