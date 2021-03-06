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
  <script type="text/javascript" src="../js/registerstudent.js" ></script>

</head>
<body>
<s:form id="myform" name="myform" method="post" theme="simple" onsubmit="return validate()" >
  <div class="main1">
    <div class="main">
      <ul>
        <li class="first">
          <h3>学生账号：</h3>
          <p>
            <s:textfield name="svo.sno" id="sno" placeholder="请填写您的学号！"></s:textfield>
            <font color="#C0C0C0">请输入有效学号！</font>
          </p>
        </li>
        <li class="first">
          <h3>学生姓名：</h3>
          <p>
            <s:textfield name="svo.sname" id="sname"  placeholder="请填写您的姓名！"/>
            <font color="#C0C0C0">2位以上字符，可使用字母、汉字等其他字符！</font>
          </p>
        </li>
        <li>
          <h3>密码：</h3>
          <p>
            <s:password name="svo.spwd" id="spwd" placeholder="请填写您的密码！"  minLength="6"  requiredFieldError="请输入密码，6到12个字符，不允许输入特殊字符！" tooShortError="密码长度必须大于6"
                        tooLongError="密码不能超过12位"></s:password>
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
              <s:select list="{'男','女'}" name="svo.sgender">
              </s:select>
           </div>
          </p>
        </li>
        <li>
          <h3>专业：</h3>
          <p>
            <s:textfield name="svo.major" id="major" placeholder="请填写您的所在专业！"></s:textfield>

            <font color="#C0C0C0">2-30位字符，可输入大小写字母、汉字！</font>
          </p>
        </li>
        <li>
          <h3>籍贯：</h3>
          <p>
            <s:textfield name="svo.city" id="city" placeholder="请填写您的籍贯！"/>

            <font color="#C0C0C0">6-60个字符，可使用大小写字母、数字、汉字等特殊字符！</font>
          </p>
        </li>
        <li>
          <h3>电话：</h3>
          <p>
            <s:textfield name="svo.sphone" id="sphone"  placeholder="请填写您的电话！"></s:textfield>
            <font color="#C0C0C0">11位字符，仅限中国手机号！</font>
          </p>
        </li>
        <li>
          <h3>邮箱：</h3>
          <p>
            <s:textfield name="svo.email" id="semail" placeholder="请填写您的邮箱！"></s:textfield>
            <font color="#C0C0C0">可使用大小写字母、数字，例如195456587@qq.com!</font>
          </p>
        </li>
        <li>
          <h3>学校：</h3>
          <p>
            <s:textfield name="svo.scollege" id="scollege" placeholder="请填写您的学院！"></s:textfield>
            <font color="#C0C0C0">2-30位字符，可输入大小写字母、汉字！</font>
          </p>
        </li>
        <li class="last">
          <s:submit  class="flatbtn-blu hidemodal" value="注册" tabindex="3"></s:submit>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <s:reset class="flatbtn-blu hidemodal" value="重置" tabindex="3"></s:reset>

        </li>
      </ul>
    </div>
  </div>
</s:form>
</body>
</html>