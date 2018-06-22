<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="../css/register-information.css">
  <!--
    下拉框样式
    -->
  <style type="text/css">
    .selectbox{ width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
    .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
    .selectbox select option{ padding:5px;}
  </style>
  <!--js验证注册信息-->
  <script type="text/javascript" src="../js/registermanger.js" >
  </script>
</head>
<body>
<s:form id="myform" name="myform" method="post" theme="simple" onsubmit="return validates()"   >
  <div class="main1">
    <div class="main">
      <ul>
        <li class="first">
          <h3>管理员账号：</h3>
          <p><s:textfield name="uv.uid" id="uid" placeholder="请填写您的帐号！"></s:textfield>
          </p>
        </li>
        <li class="first">
          <h3>管理员姓名：</h3>
          <p><s:textfield  name="uv.uname" id="uname" placeholder="请填写您的姓名！"></s:textfield></p>
        </li>
        <li>
          <h3>密码：</h3>
          <p><s:password name="uv.upwd" id="upwd" placeholder="请填写您的密码！"></s:password></p>
        </li>
        <li>
          <h3>确认密码：</h3>
          <p><s:password name="repwd" id="repwd" placeholder="请填写再次确认您的密码！"/></p>
        </li>

        <li class="last">
          <s:submit class="flatbtn-blu hidemodal" value="注册" tabindex="3"></s:submit>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <s:reset class="flatbtn-blu hidemodal" value="重置" tabindex="3"></s:reset>
        </li>
      </ul>
    </div>
  </div>
</s:form>
</body>
</html>