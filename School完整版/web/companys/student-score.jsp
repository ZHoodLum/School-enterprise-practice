<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>studentscore</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
</head>
<body>

<div class="checkout-title">
    <span><hr class="hrLine" style="width:300px;"/>评判学生实习成绩<hr class="hrLine" style="width:300px;"/></span>
</div>
<!--搜索框 <div class="search"></div>-->
<div class="sousuo">
    <input type="text" class="search" placeholder="请填写学号进行搜索"/>
    <input type="submit" value="搜索" class="sub"/>
</div>
<div id="recruitinformation">
    <s:form id="myform" name="myform" action="UpdateStudentScope">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学生学号</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学生姓名</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">专业</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">所在学院</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">指导教师</td>
                <td width="20%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">成绩</td>
            </tr>
            <s:iterator var="studentMap" value="#session.AllStudent">
            <s:iterator var="studentList" value="#studentMap.value">
            <tr align="center" style="padding:10px; border-bottom: 1px dashed #6bb642;">
                <td><s:textfield name="sid" value="%{#studentList.Sno}" theme="simple" readonly="true"/></td>
                <td><p><s:property value="#studentList.sname"/></p></td>
                <td><p><s:property value="#studentList.major"/></p></td>
                <td><p><s:property value="#studentList.scollege"/></p></td>
                <td><p>王岩</p></td>
                <%--<td><s:textfield name="sid" value="%{#studentList.Sno}" theme="simple" readonly="true"/></td>--%>
                <%--<td><s:textfield value="%{#studentList.sname}" theme="simple" readonly="true"/></td>--%>
                <%--<td><s:textfield value="%{#studentList.major}" theme="simple" readonly="true"/></td>--%>
                <%--<td><s:textfield value="%{#studentList.scollege}" theme="simple" readonly="true"/></td>--%>
                <%--<td style="padding:15px;">王岩</td>--%>
                <td style="padding:15px;">
                    <s:textfield name="scope" value="%{#studentList.sgrade}" theme="simple"></s:textfield>
                    <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="保存" tabindex="3"
                           onclick="javascript:if(confirm('确定要保存吗')){alert('保存成功!');return true;}return false;">
                </td>
            </tr>
            </s:iterator>
            </s:iterator>
        </table>
    </s:form>
</div>
</body>
</html>