<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>bTabs使用实例</title>
<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="../css/bootstrap-3.3.4.css">
  <link rel="stylesheet" type="text/css" href="../css/font-awesome.4.6.0.css">
  <link rel="stylesheet" href="../css/btabs.css" type="text/css">

  <!--登陆界面 弹窗-->
  <link rel="stylesheet" type="text/css" media="all" href="../css/login.css">
<style type="text/css">
div.menuSideBar { }
div.menuSideBar li.nav-header { font-size: 14px; padding: 3px 15px; }
div.menuSideBar .nav-list > li > a, div.menuSideBar .dropdown-menu li a { -webkit-border-radius: 0px; -moz-border-radius: 0px; -ms-border-radius: 0px; border-radius: 0px; }
<!--下拉框样式-->
.selectbox{ width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
.selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:100%; padding-right: 18%; background:none; border: none;}
.selectbox select option{ padding:5px;}


</style>

</head>

<body>
<div class="navs">
  <div class="nav_left">
    <a href="../main.jsp">校企实习信息网</a>
  </div>
</div>
<div class="content"/>
<div class="container"/>

    <div class="col-md-10" id="mainFrameTabs" style="padding : 0px;">

      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab" style="font-size: 16px;margin-top: 20px;margin-left: 80px;">欢迎来到登陆界面</a></li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">

        <div id="loginmodal"   style="overflow-y:auto;">

          <h1>登陆入口</h1>
          <!-- 响应action-->
          <s:form  method="post" theme="simple" action="CompanyLogins">

            <label for="username">用户名:</label>
            <!-- 登录名-->
            <s:textfield name="uname" class="txtfield" tabindex="1"></s:textfield>
            <label for="password">密码:</label>
            <!--密码-->
            <s:textfield name="upwd" class="txtfield" tabindex="2"></s:textfield>

            <label>登陆者身份:</label>
            <div class="selectbox" style="margin-bottom: 20px;">
            <s:select name="en" list="{'学生','教师','企业','管理员'}"></s:select>
            </div>
            <!--
              <select>
                <option value="0">学生</option>
                <option value="1">教师</option>
                <option value="2">企业</option>
                <option value="3">管理员</option>
              </select>
           -->

            <div class="center">
              <s:submit class="flatbtn-blu hidemodal" value="登陆" tabindex="3"/>
              <input type="button" name="registerbtn" id="registerbtn" class="flatbtn-blu hidemodal" value="注册" tabindex="3"
                     onclick="document.location.href='register/register.html'">
            </div>
          </s:form>

        </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/bootstrap-3.3.4.js"></script>
<script type="text/javascript" src="../js/b.tabs.js" ></script>
<script type="text/javascript" src="../js/demo.js" ></script>
</body>
</html>