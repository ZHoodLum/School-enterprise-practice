<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>studentscore</title>
    <link rel="stylesheet" type="text/css" href="../../css/applicationaudit.css">
</head>
<body>
<div class="checkout-title">
    <span><hr class="hrLine" style="width:300px;"/>学生企业实习成绩<hr class="hrLine" style="width:300px;"/></span>
</div>
<div id="recruitinformation">
    <form id="myform" name="myform" action="*****">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学号</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">姓名</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">专业</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">电话</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">实习成绩</td>
            </tr>
            <s:iterator var="studentMap" value="#session.studentMap">
                <s:iterator value="#studentMap.value" var="student">
                    <tr align="center">
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;"><s:property value="#student.sno"/></td>
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;"><s:property value="#student.sname"/></td>
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;"><s:property value="#student.major"/></td>
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;"><s:property value="#student.sPhone"/></td>
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;"><s:property value="#student.sGrade"/></td>
                    </tr>
                </s:iterator>
            </s:iterator>
        </table>
    </form>
</div>
</body>
</html>
