package com.school.service;

import com.school.dao.StudentInfoDao;
import com.school.vo.StudentinfoVo;

import java.util.List;

public class StudentInfoService {
    private StudentInfoDao studentInfoDao;

    public StudentInfoDao getStudentInfoDao() {
        return studentInfoDao;
    }

    public void setStudentInfoDao(StudentInfoDao studentInfoDao) {
        this.studentInfoDao = studentInfoDao;
    }

    public void update(StudentinfoVo studentInfoVo) {
        studentInfoDao.studentInfoUpdate(studentInfoVo);
    }

    public List<StudentinfoVo> getAllStudentForOtherClass(int cid){
        List<StudentinfoVo> studentList=studentInfoDao.getAllStudentForOtherClass(cid);
        return studentList;
    }

    public void addStudentForTeacher(int tid,int sno){
        studentInfoDao.addStudentForTeacher(tid,sno);
    }
}
