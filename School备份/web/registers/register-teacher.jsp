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
  <script type="text/javascript" src="../js/registerteacher.js" ></script>
</head>
<body>
<s:form id="myform" name="myform"  method="post" theme="simple" onsubmit="return validate()" >
  <div class="main">
    <ul>
      <li class="first">
        <h3>教师账号：</h3>
        <p>
          <s:textfield name="tvo.tid" id="tid" placeholder="请填写您的学号！"></s:textfield>
          <font color="#C0C0C0">6-10个数字，可使用数字！</font>
        </p>
      </li>
      <li class="first">
        <h3>教师姓名：</h3>
        <p>
          <s:textfield name="tvo.tname" id="tname" placeholder="请填写您的姓名！"></s:textfield>

          <font color="#C0C0C0">2位以上字符，可使用字母、汉字等其他字符！</font>
        </p>
      </li>
      <li>
        <h3>密码：</h3>
        <p>
          <s:password name="tvo.tpwd" id="tpwd" placeholder="请填写您的密码！"></s:password>
          <font color="#C0C0C0">6-20个字符，可使用大小写字母、数字等特殊字符,区分大小写！</font>
        </p>
      </li>
      <li>
        <h3>确认密码：</h3>
        <p>
          <s:password id="repwd" placeholder="请填写再次确认您的密码！"></s:password>
          <font color="#C0C0C0">请再次输入密码！</font>
        </p>
      </li>
      <li>
        <h3>性别：</h3>
        <p>
        <div class="selectbox">
          <s:select list="{'男','女'}" name="tvo.tgender" id="tgender">
          </s:select>
        </div>
        </p>
      </li>
      <li>
        <h3>职称：</h3>
        <p>
          <s:textfield id="tvo.tjob" name="tjob"  placeholder="请填写您的所在专业！"></s:textfield>
          <font color="#C0C0C0">2-30位字符，可输入大小写字母、汉字！</font>
        </p>
      </li>
      <li>
        <h3>电话：</h3>
        <p>
          <s:textfield name="tvo.tphone" id="tphone" placeholder="请填写您的电话！"></s:textfield>
          <font color="#C0C0C0">11位字符，仅限中国手机号！</font>
        </p>
      </li>
      <li>
        <h3>学院：</h3>
        <p>
          <s:select name="tvoo.tCollege" list="{'信息与控制学院','机械与运载学院','经济与管理学院','能源与水利学院','艺术与传媒学院','生命工程学院'}">
          </s:select>
          <font color="#C0C0C0">2-30位字符，可输入大小写字母、汉字！</font>
        </p>
      </li>
      <li class="last">
        <s:submit class="flatbtn-blu hidemodal" value="注册" tabindex="3" ></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <s:reset class="flatbtn-blu hidemodal" value="重置" tabindex="3"></s:reset>
      </li>
    </ul>
  </div>
</s:form>
</body>
</html>