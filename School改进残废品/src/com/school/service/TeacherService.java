package com.school.service;


import com.school.dao.StudentInfoDao;
import com.school.dao.TeacherDao;
import com.school.dao.Teacher_StudentInfoDao;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherStudentinfoVo;
import com.school.vo.TeacherVo;

import java.util.List;
import java.util.Map;


public class TeacherService {

    private TeacherDao teacherDao;
    private Teacher_StudentInfoDao teacher_studentInfoDao;
    private StudentInfoDao studentInfoDao;

    public Teacher_StudentInfoDao getTeacher_studentInfoDao() {
        return teacher_studentInfoDao;
    }

    public void setTeacher_studentInfoDao(Teacher_StudentInfoDao teacher_studentInfoDao) {
        this.teacher_studentInfoDao = teacher_studentInfoDao;
    }


    public TeacherDao getTeacherDao() {
        return teacherDao;
    }

    public void setTeacherDao(TeacherDao teacherDao) {
        this.teacherDao = teacherDao;
    }

    public StudentInfoDao getStudentInfoDao() {
        return studentInfoDao;
    }

    public void setStudentInfoDao(StudentInfoDao studentInfoDao) {
        this.studentInfoDao = studentInfoDao;
    }

    //查询全部教师信息
    public List<TeacherVo> save(TeacherVo tvo){
        return teacherDao.getTeacher();
    }
    //添加教师信息（注册）
    public boolean Add(TeacherVo tvo) {
        return  teacherDao.TeacherAdd(tvo);
    }

    public Map<String,List<StudentinfoVo>> getStudentForTeacher(int tid){
        List<TeacherStudentinfoVo> t_sVoList=teacher_studentInfoDao.getOneT_SInfo(tid);
        int[] sno=new int[t_sVoList.size()];
        for(int i=0;i<t_sVoList.size();i++){
            sno[i]=t_sVoList.get(i).getSno();
        }
        Map<String,List<StudentinfoVo>> studentMap=studentInfoDao.getStudentForTeacher(sno);
        return studentMap;
    }
}
