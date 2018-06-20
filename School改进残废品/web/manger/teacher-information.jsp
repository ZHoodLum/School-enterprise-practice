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
        <span><hr class="hrLine" style="width:500px;"/>教师信息查询<hr class="hrLine" style="width:500px;"/></span>
    </div>
    <div id="recruitinformation">
        <s:form>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">教师编号</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">教师名称</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">登陆密码</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">所在学院</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">性别</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">职位</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">电话</td>
                    <td width="15%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">操作</td>
                </tr>
                <s:iterator var="allTeacher" value="#session.allTeacher">
                    <tr align="center" style="padding:10px; border-bottom: 1px dashed #6bb642;">
                        <td style="padding:15px;"><s:property value="#allTeacher.tid"/></td>
                        <td style="padding:15px;"><s:property value="#allTeacher.tname"/></td>
                        <td style="padding:15px;"><s:property value="#allTeacher.tpwd"/></td>
                        <td style="padding:15px;"><s:property value="#allTeacher.tCollege"/></td>
                        <td style="padding:15px;"><s:property value="#allTeacher.tGender"/></td>
                        <td style="padding:15px;">1<s:property value="#allTeacher.tJob"/></td>
                        <td style="padding:15px;"><s:property value="#allTeacher.tphone"/></td>
                        <td align="center"><a href="update-teacher-information.jsp">修改</a>||<s:a href="deleteTeacher?tid=%{#allTeacher.tid}">删除</s:a></td>
                    </tr>
                </s:iterator>
            </table>
        </s:form>
    </div>
</body>
</html>