package com.school.dao;

import com.school.service.StudentInfoService;
import com.school.utils.WebUtils;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherStudentinfoVo;
import com.school.vo.TeacherVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.*;

public class StudentInfoDao extends HibernateDaoSupport{
    private StudentInfoService studentInfoService;

    public StudentInfoService getStudentInfoService() {
        return studentInfoService;
    }

    public void setStudentInfoService(StudentInfoService studentInfoService) {
        this.studentInfoService = studentInfoService;
    }

    //学生信息修改
    public void studentInfoUpdate(StudentinfoVo studentInfoVo) {
        getHibernateTemplate().update(studentInfoVo);
    }
    //给一数组的sid得到所有的学生信息
    public Map<String,List<StudentinfoVo>> getAllEnterPriseStudentInfo(Integer[] e_s2_sid){
        String sql="from StudentinfoVo where sno=?";
        Map<String,List<StudentinfoVo>> map = new HashMap<String, List<StudentinfoVo>>();
        for(int i=0;i<e_s2_sid.length;i++){
            List<StudentinfoVo> list=new ArrayList<StudentinfoVo>();
            list= (List<StudentinfoVo>) this.getHibernateTemplate().find(sql,e_s2_sid[i]);
            map.put("list"+i+1,list);
        }
        return map;
    }
    //查询某一个学生
    public List<StudentinfoVo> selectStudent(int intsid){
        String sql="from StudentinfoVo where sno=?";
        List<StudentinfoVo> list= (List<StudentinfoVo>) this.getHibernateTemplate().find(sql,intsid);
        return list;
    }

    //修改学生的实习成绩
    public void updateStudentGrade(StudentinfoVo studentinfo, int intscope) {
        studentinfo.setsGrade(intscope);
        this.getHibernateTemplate().update(studentinfo);
    }

    //查询所有的学生
    public List<StudentinfoVo> getAllStudent(){
        List<StudentinfoVo> list= (List<StudentinfoVo>) this.getHibernateTemplate().find("from StudentinfoVo ");
        return list;
    }
    //删除学生
    public void deleteStduent(StudentinfoVo studentinfoVo){
        this.getHibernateTemplate().delete(studentinfoVo);
    }

    public List<StudentinfoVo> getAllStudentForOtherClass(int cid){
        String sql="from StudentinfoVo where cid=?";
        List<StudentinfoVo> studentList= (List<StudentinfoVo>) this.getHibernateTemplate().find(sql,cid);
        return studentList;
    }

    public void addStudentForTeacher(int tid,int sno){
        TeacherStudentinfoVo t_sVo=new TeacherStudentinfoVo();
        t_sVo.setId(WebUtils.makeUUID());
        t_sVo.setSno(sno);
        t_sVo.setTid(tid);
        this.getHibernateTemplate().save(t_sVo);
    }

    public Map<String,List<StudentinfoVo>> getStudentForTeacher(int[] sno){
        String sql="from StudentinfoVo where sno=?";
        Map<String,List<StudentinfoVo>> studentMap=new HashMap<>();
        List<StudentinfoVo> studentList;
        for(int i=0;i<sno.length;i++){
            studentList= (List<StudentinfoVo>) this.getHibernateTemplate().find(sql,sno[i]);
            studentMap.put(i+"",studentList);
        }
        return studentMap;
    }
}
