package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.school.service.StudentInfoService;
import com.school.service.TeacherService;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public class TeacherAction extends ActionSupport  implements SessionAware, ModelDriven<TeacherVo> {
    private TeacherVo teacherVo;
    private TeacherVo teacherVos = new TeacherVo();
    private Map<String, Object> session;
    private List<TeacherVo> list;
    private TeacherService teacherService;
    private StudentInfoService studentInfoService;


    public StudentInfoService getStudentInfoService() {
        return studentInfoService;
    }

    public void setStudentInfoService(StudentInfoService studentInfoService) {
        this.studentInfoService = studentInfoService;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public TeacherService getTeacherService() {
        return teacherService;
    }
    @Override
    public TeacherVo getModel() {
        return teacherVos;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session=session;
    }
    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }
    //查询全部教师信息
    public String Select() throws Exception {
        list = teacherService.save(teacherVo);
        if (list != null) {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }

    //查询当前老师麾下的学生
    public String getStudentForTeacher(){
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpSession session=request.getSession();
        List<TeacherVo> teacher= (List<TeacherVo>) session.getAttribute("teacher");
        Map<String,List<StudentinfoVo>> studentMap=teacherService.getStudentForTeacher(teacher.get(0).getTid());
        session.setAttribute("studentMap",studentMap);
        return SUCCESS;
    }

    //把同一个班级的学生查询出来
    public String getAllStudentForOtherClass(){
        HttpServletRequest request = ServletActionContext.getRequest();
        int cid=Integer.parseInt(request.getParameter("cid"));
        List<StudentinfoVo> studentlist=studentInfoService.getAllStudentForOtherClass(cid);
        session.put("studentListforClass",studentlist);
        return SUCCESS;
    }
    //给学生找老师
    public String addStudentForTeacher(){
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpSession session=request.getSession();
        List<TeacherVo> list= (List<TeacherVo>) session.getAttribute("teacher");
        int tid=list.get(0).getTid();
        int sno=Integer.parseInt(request.getParameter("sno"));
        System.out.println("tid= "+tid+" sno= "+sno);
        studentInfoService.addStudentForTeacher(tid,sno);
        return NONE;
    }

}
