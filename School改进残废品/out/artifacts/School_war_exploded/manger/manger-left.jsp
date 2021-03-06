<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>manger-left</title>
    <link rel="stylesheet" type="text/css" href="../css/manger-left.css">
</head>
<body id="bg">
<div class="container">
    <div class="leftsidebar_box">
        <div class="line"></div>
        <dl class="system_log">
            <dt onClick="changeImage()">企业管理<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="selectAllJobInfo" target="right">审核企业发布信息</a></dd>
            <dd><a href="getAllEnterPrise" target="right">企业详细信息</a></dd>
            <dd><a href="../registers/register-company.jsp" target="right">添加企业信息</a></dd>
        </dl>

        <dl class="custom">
            <dt onClick="changeImage()">教师管理<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="getAllTeacher" target="right">教师详细信息</a></dd>
            <dd><a href="../registers/register-teacher.jsp" target="right">添加教师信息</a></dd>
        </dl>

        <dl class="app">
            <dt onClick="changeImage()">学生管理<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="getAllStudent" target="right">学生详细信息</a></dd>
            <dd><a href="../registers/register-student.jsp" target="right">添加学生信息</a></dd>
        </dl>
<!--
        <dl class="cloud">
            <dt>大数据云平台<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">平台运营商管理</a></dd>
        </dl>

        <dl class="syetem_management">
            <dt>系统管理<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">后台用户管理</a></dd>
            <dd><a href="#">角色管理</a></dd>
            <dd><a href="#">客户类型管理</a></dd>
            <dd><a href="#">栏目管理</a></dd>
            <dd><a href="#">微官网模板组管理</a></dd>
            <dd><a href="#">商城模板管理</a></dd>
            <dd><a href="#">微功能管理</a></dd>
            <dd><a href="#">修改用户密码</a></dd>
        </dl>

        <dl class="source">
            <dt>素材库管理<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">图片库</a></dd>
            <dd><a href="#">链接库</a></dd>
            <dd><a href="#">推广管理</a></dd>
        </dl>

        <dl class="statistics">
            <dt>统计分析<img src="../images/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">客户统计</a></dd>
        </dl>
        -->
    </div>
</div>

<script src="../js/jquery.js"></script>
<script type="text/javascript">
    $(".leftsidebar_box dt").css({"background-color":"#3992d0"});
    $(".leftsidebar_box dt img").attr("src","../images/left/select_xl01.png");
    $(function(){
        $(".leftsidebar_box dd").hide();
        $(".leftsidebar_box dt").click(function(){
            $(".leftsidebar_box dt").css({"background-color":"#3992d0"})
            $(this).css({"background-color": "#317eb4"});
            $(this).parent().find('dd').removeClass("menu_chioce");
            $(".leftsidebar_box dt img").attr("src","../images/left/select_xl01.png");
            $(this).parent().find('img').attr("src","../images/left/select_xl.png");
            $(".menu_chioce").slideUp();
            $(this).parent().find('dd').slideToggle();
            $(this).parent().find('dd').addClass("menu_chioce");
        });
    })
</script>
</body>
</html>