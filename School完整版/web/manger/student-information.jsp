<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>company-information</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
    <style type="text/css">
        a{
            padding:0 6px 0 6px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="checkout-title">
        <span><hr class="hrLine" style="width:500px;"/>学生信息查询<hr class="hrLine" style="width:500px;"/></span>
    </div>
    <div id="recruitinformation">
        <s:form>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                    <td width="5%"  style=" border-bottom: 2px dashed #6bb642;">学生学号</td>
                    <td width="5%"  style=" border-bottom: 2px dashed #6bb642;">名称</td>
                    <td width="10%"  style="border-bottom: 2px dashed #6bb642;">密码</td>
                    <td width="5%"  style=" border-bottom: 2px dashed #6bb642;">性别</td>
                    <td width="8%"  style=" border-bottom: 2px dashed #6bb642;">专业</td>
                    <td width="8%"  style=" border-bottom: 2px dashed #6bb642;">籍贯</td>
                    <td width="5%"  style=" border-bottom: 2px dashed #6bb642;">电话</td>
                    <td width="10%"  style="border-bottom: 2px dashed #6bb642;">邮箱</td>
                    <td width="10%"  style=" border-bottom: 2px dashed #6bb642;">学校</td>
                    <td width="15%"  style=" border-bottom: 2px dashed #6bb642;">实习状态</td>
                    <td width="15%"  style=" border-bottom: 2px dashed #6bb642;">实习成绩</td>
                    <td width="15%"  style=" border-bottom: 2px dashed #6bb642;">操作</td>
                </tr>
                <s:iterator var="allStudent" value="#session.allStudent">
                    <tr align="center" style="padding:10px; border-bottom: 1px dashed #6bb642;">
                        <td style="padding:4px;"><s:property value="#allStudent.sno"/> </td>
                        <td style="padding:4px;"><s:property value="#allStudent.sname"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.spwd"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.sGender"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.major"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.city"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.sPhone"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.email"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.sCollege"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.cE"/></td>
                        <td style="padding:4px;"><s:property value="#allStudent.sGrade"/></td>
                        <td align="center"><a href="update-student-information.jsp">修改</a>||<s:a href="deleteStudent?sid=%{#allStudent.sno}">删除</s:a></td>
                    </tr>
                </s:iterator>
            </table>
        </s:form>
    </div>
</body>
</html>