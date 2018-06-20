package com.school.dao;

import com.school.vo.TeacherStudentinfoVo;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Teacher_StudentInfoDao extends HibernateDaoSupport {
    //得到老师的所有id
    public Map<String, List<TeacherStudentinfoVo>> getAllTeacherId(Integer[] allsid) {
        String sql = "from TeacherStudentinfoVo where sno=?";
        Map<String, List<TeacherStudentinfoVo>> map = new HashMap<String, List<TeacherStudentinfoVo>>();
        for (int i = 0; i < allsid.length; i++) {
            List<TeacherStudentinfoVo> allteacherid = new ArrayList<TeacherStudentinfoVo>();
            allteacherid = (List<TeacherStudentinfoVo>) this.getHibernateTemplate().find(sql, allsid[i]);
            map.put("a" + i, allteacherid);
        }
        return map;
    }

    //得到某个老师
    public TeacherStudentinfoVo getOneTeacher(int tid) {
        String sql = "from TeacherStudentinfoVo where tid=?";
        List<TeacherStudentinfoVo> list = (List<TeacherStudentinfoVo>) this.getHibernateTemplate().find(sql, tid);
        return list.get(0);
    }
    //删除
    public void deleteFromTeacherStudentinfoVo(TeacherStudentinfoVo t_sVo){
        this.getHibernateTemplate().delete(t_sVo);
    }

    //得到某个学生
    public TeacherStudentinfoVo getOneStudent(int sid) {
        String sql = "from TeacherStudentinfoVo where sno=?";
        List<TeacherStudentinfoVo> list = (List<TeacherStudentinfoVo>) this.getHibernateTemplate().find(sql, sid);
        return list.get(0);
    }
    //删除
    public void deleteFromTeacherStudentinfoVoWherStudent(TeacherStudentinfoVo t_sVo){
        this.getHibernateTemplate().delete(t_sVo);
    }

    public List<TeacherStudentinfoVo> getOneT_SInfo(int tid){
        List<TeacherStudentinfoVo> listStudentId=(List<TeacherStudentinfoVo>) this.getHibernateTemplate().find("from TeacherStudentinfoVo where tid=?",tid);
        return listStudentId;
    }

}
