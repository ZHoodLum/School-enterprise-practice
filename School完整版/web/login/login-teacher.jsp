<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/3
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <!--登陆界面 弹窗-->
    <link rel="stylesheet" type="text/css" media="all" href="../css/login.css">
</head>
<body>
<div id="loginmodal"   style="overflow-y:auto;">

    <h1>教师登陆入口</h1>
    <!-- 响应action-->
    <form id="loginform" name="loginform" method="post" action="*************">

        <label for="username">用户名:</label>
        <!-- 登录名-->
        <input type="text" name="username" id="username" class="txtfield" tabindex="1">

        <label for="password">密码:</label>
        <!--密码-->
        <input type="password" name="password" id="password" class="txtfield" tabindex="2">
        <div class="center">
            <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="登陆" tabindex="3">
            <input type="button" name="registerbtn" id="registerbtn" class="flatbtn-blu hidemodal" value="注册" tabindex="3"
                   onclick="document.location.href='register/register.html'">
        </div>
    </form>

</div>

</body>
</html>
