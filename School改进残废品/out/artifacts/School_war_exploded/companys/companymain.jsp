<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>teacher</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-3.3.4.css">
<link rel="stylesheet" type="text/css" href="../css/font-awesome.4.6.0.css">
<link rel="stylesheet" href="../css/btabs.css" type="text/css">

  <link rel="stylesheet" type="text/css" href="../css/left.css">
<style type="text/css">
div.menuSideBar { }
div.menuSideBar li.nav-header { font-size: 14px; padding: 3px 15px; }
div.menuSideBar .nav-list > li > a, div.menuSideBar .dropdown-menu li a { -webkit-border-radius: 0px; -moz-border-radius: 0px; -ms-border-radius: 0px; border-radius: 0px; }
</style>
</head>
<body>
<div class="navs">
  <div class="nav_left">
    <a href="../login/login.jsp">校企实习信息网</a>
  </div>
</div>
<div class="content"/>
<div class="container"/>
<h3 class="page-header">欢迎来到企业管理界面</h3>
<div class="">
  <div class="row-fluid">
    <div class="col-md-2" style="padding-left: 0px;">
      <div class="well menuSideBar" style="padding: 8px 0px;">
        <ul class="nav nav-list" id="menuSideBar">
          <li class="nav-header">导航菜单</li>
          <div id="titles">
            <!--修改信息 跳转的网页-->
            <a href="../companys/update-company-information.jsp" target="right" style="text-decoration: none;">
              <div id="login">
                <img src="../images/loginusers.png"  id="circle">
                <s:iterator var="list" value="#session.enterlist"></s:iterator>
                <span id="title1"><s:property value="%{#list.emanager}"></s:property></span>
                <s:a href="everyOneLogout.action">注销</s:a>
              </div>
            </a>
          </div>

          <li class="nav-divider"></li>
          <li mid="tab1" funurl="../companys/addinformation.jsp"><a tabindex="-1" href="javascript:void(0);">发布招聘信息入口</a></li>
          <li mid="tab2" funurl="selectStudentApply"><a tabindex="-1" href="javascript:void(0);">审核实习申请入口</a></li>
          <li mid="tab3" funurl="getAllStudentForEnterPrise"><a tabindex="-1" href="javascript:void(0);">查询学生信息入口</a></li>
          <li mid="tab4" funurl="../companys/student-score.jsp"><a tabindex="-1" href="javascript:void(0);">评判学生实习成绩入口</a></li>
        </ul>
      </div>
    </div>
    <div class="col-md-10" id="mainFrameTabs" style="padding : 0px;">

      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">
        <div class="tab-pane active" id="bTabs_navTabsMainPage">
          <div class="page-header">
            <h2 style="font-size: 31.5px;text-align: center;font-weight: normal;">欢迎使用</h2>
          </div>
          <div style="text-align: center;font-size: 20px;line-height: 20px;"> Welcome to use School enterprise cooperation network ! </div>
          <div style="text-align: center;font-size: 14px;margin-top: 350px;"><p>CopyRight &copy; www.2222.com<a href="http://www.syyyy.com.cn">沈阳工学院</a></p></div>
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