<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>studentinformation</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
</head>
<body>
<div class="checkout-title">
    <span><hr class="hrLine" style="width:300px;"/>学生的信息查询<hr class="hrLine" style="width:300px;"/></span>
</div>







<div id="recruitinformation">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td width="6%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学号</td>
            <td width="6%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">姓名</td>
            <td width="7%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">性别</td>
            <td width="13%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">专业</td>
            <td width="15%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">籍贯</td>
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">邮箱</td>
            <td width="8%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">电话</td>
            <td width="12%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学校</td>
            <td width="7%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">是否实习</td>
            <td width="8%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">指导教师</td>
        </tr>
        <s:iterator var="studentMap" value="#session.AllStudent">
            <s:iterator var="studentList" value="#studentMap.value">
                <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                    <td style="padding:10px;"><s:property value="#studentList.Sno"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.sname"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.sgender"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.major"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.city"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.email"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.sphone"/></td>
                    <td style="padding:10px;"><s:property value="#studentList.scollege"/></td>
                    <td style="padding:10px;">实习</td>
                    <td style="padding:10px;">王岩</td>
                </tr>
            </s:iterator>
        </s:iterator>
        <%--<tr>--%>
            <%--<s:iterator var="a" value="#session.allTeacherNames">--%>
            <%--<td style="padding:10px;"><s:property value="#a"/></td>--%>
            <%--&lt;%&ndash;<td style="padding:10px;">王岩</td>&ndash;%&gt;--%>
            <%--</s:iterator>--%>
        <%--</tr>--%>
    </table>
</div>
</body>
</html>