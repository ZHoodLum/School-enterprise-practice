package com.school.dao;

import com.school.vo.ResumeVo;
import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ResumeDao extends HibernateDaoSupport {

    public void addNewResume(ResumeVo resume){
        this.getHibernateTemplate().save(resume);
    }

    public List<ResumeVo> getOneResume(int sno){
        String sql="from ResumeVo where sno=?";
        List<ResumeVo> resumeList= (List<ResumeVo>) this.getHibernateTemplate().find(sql,sno);
        return resumeList;
    }

    public void checkSno(int sno) throws IOException {
        String sql="from ResumeVo where sno=?";
        List list=this.getHibernateTemplate().find(sql,sno);
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("textml;charset=UTF-8");
        PrintWriter writer = response.getWriter();
        if(list.size()==0) {
            writer.println("no");
        }else {
            writer.print("yes");
        }
    }
}
