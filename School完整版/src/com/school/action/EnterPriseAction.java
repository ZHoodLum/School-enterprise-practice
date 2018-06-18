package com.school.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.school.service.EnterPriseService;
import com.school.vo.EnterpriseVo;
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
public class EnterPriseAction extends ActionSupport implements ServletRequestAware,SessionAware , ModelDriven<EnterpriseVo> {
    /**
     * @return
     */
    private Map<String, Object> session;
    @Autowired
    private EnterPriseService enterPriseService;
    private EnterpriseVo enterpriseVo;
    private EnterpriseVo enterpriseVos = new EnterpriseVo();
    private HttpServletRequest request;
    private String select;
    private String en;
    private List<EnterpriseVo> list;
    private List<EnterpriseVo> lists;
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
    public void setLists(List<EnterpriseVo> lists) {
        this.lists = lists;
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
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
    public List<EnterpriseVo> getList() {
        return list;
    }
    public void setList(List<EnterpriseVo> list) {
        this.list = list;
    }
    @Override
    public EnterpriseVo getModel() {
        return enterpriseVos;
    }
    /***
     *查询全部
     * @return
     * @throws Exception
     */
    public String login() throws Exception {
        list = enterPriseService.save(enterpriseVo);
        System.out.println("success");
        if (list != null) {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            return SUCCESS;
        } else {
            return INPUT;
        }
    }
    public String selectOne() throws Exception {
        if (select.equals("按名称")) {
            lists = enterPriseService.saveOne(en);
            if (lists != null) {
                HttpServletRequest request = ServletActionContext.getRequest();
                HttpSession session = request.getSession();
                session.setAttribute("list", lists);
                //执行按编号查询
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

      /* else if(select=="按名称"){
            //执行按名称查询
            return INPUT;
        }
        return INPUT;*/
    //删除企业信息
    public String delete() throws Exception{
      /*  EnterpriseVo e=new EnterpriseVo();
        int eid=Integer.parseInt(request.getParameter("eid"));*/
        if (enterPriseService.Delete(enterpriseVos)){
            return SUCCESS;
        } else {
            return INPUT;
        }
    }
}


