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
</head>
<body>
<form id="myform" name="myform" action="*******" method="post">
  <div class="main1">
    <div class="main">
      <ul>
        <li class="first">
          <h3>管理员账号：</h3>
          <p><input type="text" id="id" name="name" placeholder="请填写您的帐号！"/></p>
        </li>
        <li class="first">
          <h3>管理员姓名：</h3>
          <p><input type="text" id="name" name="name" placeholder="请填写您的姓名！"/></p>
        </li>
        <li>
          <h3>密码：</h3>
          <p><input type="password" name="passwd" placeholder="请填写您的密码！"/></p>
        </li>
        <li>
          <h3>确认密码：</h3>
          <p><input type="password" name="passwd_conf" placeholder="请填写再次确认您的密码！"/></p>
        </li>
        <li>
          <h3>性别：</h3>
          <p>
            <div class="selectbox">
              <select>
                <option value="0">男</option>
                <option value="1">女</option>
              </select>
           </div>
          </p>
        </li>
        <li>
          <h3>电话：</h3>
          <p><input type="text" id="userName" name="user_name" placeholder="请填写您的电话！"/></p>
        </li>
        <li>
          <h3>邮箱：</h3>
          <p><input type="text" id="userName" name="user_name" placeholder="请填写您的邮箱！"/></p>
        </li>
        <li class="last">
          <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="注册" tabindex="3"
                 onclick="javascript:if(confirm('确定要注册吗')){alert('注册成功!');return true;}return false;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="button" name="registerbtn" id="registerbtn" class="flatbtn-blu hidemodal" value="重置" tabindex="3">
        </li>
      </ul>
    </div>
  </div>
</form>
</body>
</html>