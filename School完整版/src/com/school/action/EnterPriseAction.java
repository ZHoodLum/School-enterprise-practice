package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.school.service.EnterPriseService;
import com.school.vo.EnterpriseStudentinfo1Vo;
import com.school.vo.EnterpriseVo;
import com.school.vo.StudentinfoVo;
import com.school.vo.TeacherVo;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/***
 *
 */
public class EnterPriseAction extends ActionSupport implements SessionAware , ModelDriven<EnterpriseVo> {
    /**
     * @return
     */
    private Map<String, Object> session;
    private EnterPriseService enterPriseService;
    private EnterpriseVo enterpriseVo = new EnterpriseVo();
    private String select;
    private String en;
    private List<EnterpriseVo> list;
    private List<EnterpriseVo> lists;
    private String sid;
    private String scope;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getSelect() {
        return select;
    }
    public void setSelect(String select) {
        this.select = select;
    }
    public String getEn() {
        return en;
    }
    public void setEn(String en) {
        this.en = en;
    }
    public List<EnterpriseVo> getLists() {
        return lists;
    }

    public EnterPriseService getEnterPriseService() {
        return enterPriseService;
    }

    public void setEnterPriseService(EnterPriseService enterPriseService) {
        this.enterPriseService = enterPriseService;
    }

    public void setLists(List<EnterpriseVo> lists) {
        this.lists = lists;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
    public EnterpriseVo getEnterpriseVo() {
        return enterpriseVo;
    }
    public void setEnterpriseVo(EnterpriseVo enterpriseVo) {
        this.enterpriseVo = enterpriseVo;
    }
    public List<EnterpriseVo> getList() {
        return list;
    }
    public void setList(List<EnterpriseVo> list) {
        this.list = list;
    }
    @Override
    public EnterpriseVo getModel() {
        return enterpriseVo;
    }
    //查询所有实习的学生信息
    public String getAllStudent() throws Exception {
        List<EnterpriseVo> enterprise= (List<EnterpriseVo>) session.get("enterlist");
        Map<String,List<StudentinfoVo>> map=enterPriseService.getAllStudent(enterprise.get(0).getEid());
        session.put("AllStudent",map);
        List<String> allTeacherNames=enterPriseService.getTeacherName(enterprise.get(0).getEid());
        session.put("allTeacherNames",allTeacherNames);
        return SUCCESS;
    }
    //修改学生的实习成绩
    public String updateStudentScope() throws Exception{
        int intsid=Integer.parseInt(sid);
        int intscope=Integer.parseInt(scope);
        enterPriseService.updateStudentScope(intsid,intscope);
        return SUCCESS;
    }
    //查询实习申请的学生
    public String selectStudentApply()throws Exception{
        List<EnterpriseVo> enterlist= (List<EnterpriseVo>) session.get("enterlist");
        int eid=enterlist.get(0).getEid();
        Map<String,List<StudentinfoVo>> map=enterPriseService.selectStudentApply(eid);
        session.put("allApplyStudentMap",map);
        return SUCCESS;
    }

    //执行按编号查询
    public String selectOne() throws Exception {
        if (select.equals("按名称")) {
            lists = enterPriseService.saveOne(en);
            if (lists != null) {
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("list", lists);
                return SUCCESS;
            }
            return INPUT;
        }
        if (select.equals("按编号")) {
            lists = enterPriseService.saveOneId(en);
            if (lists!= null) {
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("list", lists);
                //执行按编号查询
                return SUCCESS;
            }
            return INPUT;
        }
        return INPUT;
    }

}


