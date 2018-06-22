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
  <script type="text/javascript" src="../js/companyregister.js" ></script>
</head>
<body>
<div id="loginmodal"   style="overflow-y:auto;">

  <s:form id="myform" name="myform" action="EnterPriseRegister" method="post" onsubmit="return validate()" theme="simple">
    <div class="main">
      <ul>
        <li class="first">
          <h3>企业账号：</h3>
          <p>
            <s:textfield name="evo.eid" id="eid" placeholder="请填写贵公司账号" maxlength="10" minLength="6" requiredFieldError="请输入密码，6到9个字符，不允许输入特殊字符！" tooShortError="密码长度必须大于6" tooLongError="密码不能超过12位"></s:textfield>
            <font color="#C0C0C0">6-10个数字，可使用数字！</font>
          </p>
        </li>
        <li class="first">
          <h3>企业名称：</h3>
          <p>
            <s:textfield name="evo.ename" id="ename" placeholder="请填写贵公司名称！"></s:textfield>
            <font color="#C0C0C0">5位以上字符，可使用字母、数字、汉字等其他字符！</font>
          </p>
        </li>
        <li>
          <h3>密码：</h3>
          <p>
            <s:password name="evo.epwd" id="epwd" placeholder="请填写您的密码！"  minLength="6" maxlength="12" requiredFieldError="请输入密码，6到12个字符，不允许输入特殊字符！" tooShortError="密码长度必须大于6" tooLongError="密码不能超过12位"/>
            <font color="#C0C0C0">6-20个字符，可使用大小写字母、数字等特殊字符，区分大小写！</font>
          </p>
        </li>
        <li>
          <h3>确认密码：</h3>
          <p>
            <s:password  id="repwd" placeholder="请填写再次确认您的密码！"></s:password>
            <font color="#C0C0C0">请再次输入密码！</font>
          </p>
        </li>
        <li>
          <h3>地址：</h3>
          <p>
            <s:textfield name="evo.eadd" id="eadd"  placeholder="请填写贵公司的所在地址！"></s:textfield>
            <font color="#C0C0C0">6-60个字符，可使用大小写字母、数字、汉字等特殊字符！</font>
          </p>
        </li>
        <li>
          <h3>电话：</h3>
          <p>
            <s:textfield name="evo.ephone" id="ephone" placeholder="请填写贵公司的电话！"></s:textfield>
            <font color="#C0C0C0">11位字符，仅限中国手机号！</font>
          </p>
        </li>
        <li>
          <h3>企业简介：</h3>
          <p>
            <s:textfield name="evo.eintroduce"   placeholder="请填写贵公司的简介！"></s:textfield>
            <font color="#C0C0C0">11位字符，仅限中国手机号！</font>
          </p>
        </li>
        <li>
          <h3>邮箱：</h3>
          <p>
            <s:textfield name="evo.email"  id="email"  placeholder="请填写贵公司的邮箱！"></s:textfield>
            <font color="#C0C0C0">可使用大小写字母、数字，例如195456587@qq.com!</font>
          </p>
        </li>
        <li>
          <h3>账号管理者：</h3>
          <p>
            <s:textfield name="evo.emanager"  id="emanger" placeholder="请填写此账号的账号管理者名！"></s:textfield>
            <font color="#C0C0C0">2-20位字符，可输入大小写字母、汉字！</font>
          </p>
        </li>
        <li class="last">
          <s:submit class="flatbtn-blu hidemodal" value="注册" tabindex="3"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <s:reset class="flatbtn-blu hidemodal" value="重置" tabindex="3"></s:reset>
          <!--onclick="javascript:if(confirm('确定要注册吗')){alert('注册成功!');return true;}return false;"-->
        </li>
      </ul>
    </div>
  </s:form>
</div>
</body>
</html>