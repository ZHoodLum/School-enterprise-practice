<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/3
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>teachertitle</title>
    <link rel="stylesheet" type="text/css" href="../css/left.css">
</head>
<body>
<div id="titles">
    <!--修改信息 跳转的网页-->

    <a href="main.html" target="right" style="text-decoration: none;">
        <div id="login">
            <img src="../images/loginusers.png"  id="circle">

            <span id="title1">胡歌<s:property value="#list.ename"/></span>
        </div>
    </a>


    <a href="../company/student-information.html" target="right" id="first">学生信息查询</a><br/>
    <a href="teachermanger-studentscore.html" target="right" id="four">学生实习成绩</a><br/>
</div>
</body>
</html>
