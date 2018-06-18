<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/3
  Time: 20:51
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

    <h1>企业登陆入口</h1>
    <!-- 响应action-->
    <s:form id="loginform" name="loginform" method="post" action="CompanyLogin" theme="simple">

        <label >企业账号:</label>
        <!-- 登录名-->
        <s:textfield name="enterpriseVo.eid" class="txtfield" tabindex="1"></s:textfield>


        <label>企业密码:</label>
        <!--密码-->
        <s:textfield name="enterpriseVo.epwd" class="txtfield" tabindex="2"></s:textfield>

        <div class="center">
            <s:submit value="登陆" tabindex="3" class="flatbtn-blu hidemodal" ></s:submit>
           <!--
            <input type="button" name="registerbtn" id="registerbtn" class="flatbtn-blu hidemodal" value="注册" tabindex="3"
                   onclick="document.location.href='register/register.html'">-->
        </div>
    </s:form>
</div>

</body>
</html>
