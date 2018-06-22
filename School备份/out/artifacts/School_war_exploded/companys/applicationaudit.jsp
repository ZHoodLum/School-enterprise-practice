<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
    <!--
    下拉框样式
    -->
    <style type="text/css">
        .selectbox{ width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
        .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
        .selectbox select option{ padding:5px;}
    </style>
</head>
<body>
<div class="checkout-title">
    <span><hr class="hrLine" style="width:300px;"/>请审核实习申请<hr class="hrLine" style="width:300px;"/></span>
</div>
<div id="recruitinformation">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学生学号</td>
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学生姓名</td>
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">性别</td>
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">专业</td>
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">居住地</td>
            <td width="20%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">电子邮件</td>
            <td width="20%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">电话</td>
            <td width="20%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">毕业院校</td>
            <td width="20%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">操作</td>
        </tr>
        <s:iterator var="allApplyStudentMap" value="#session.allApplyStudentMap">
            <s:iterator var="applyStudentList" value="#allApplyStudentMap.value">
        <tr align="center" style="padding:10px; border-bottom: 1px dashed #6bb642;">
            <td style="padding:15px;"><s:property value="#applyStudentList.sno"/> </td>
            <td style="padding:15px;"><s:property value="#applyStudentList.sname"/></td>
            <td style="padding:15px;"><s:property value="#applyStudentList.sGender"/></td>
            <td style="padding:15px;"><s:property value="#applyStudentList.major"/></td>
            <td style="padding:15px;"><s:property value="#applyStudentList.city"/></td>
            <td style="padding:15px;"><s:property value="#applyStudentList.email"/></td>
            <td style="padding:15px;"><s:property value="#applyStudentList.sPhone"/></td>
            <td style="padding:15px;"><s:property value="#applyStudentList.sCollege"/></td>
            <td style="padding:15px;"><s:a href="getOneResume?sno=%{#applyStudentList.sno}">查看详情</s:a></td>
        </tr>
            </s:iterator>
        </s:iterator>

    </table>
</div>
</body>
</html>