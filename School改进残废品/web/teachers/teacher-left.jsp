<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>manger-left</title>
    <link rel="stylesheet" type="text/css" href="../css/company-left.css">
    <link rel="stylesheet" type="text/css" href="../css/manger-left.css">
</head>
<body id="bg">
<div class="container">
    <div class="leftsidebar_box">
        <div class="line"></div>

        <dl class="app">
            <dt><img src="../images/left/select_xl01.png">
                <a href="getStudentForTeacher.action" target="right">查询学生成绩</a>
            </dt>
            <dd class="first_dd"></dd>
            <dd class="first_dd" style="height: 10px;"></dd>
        </dl>
        <dl class="cloud">
            <dt><img src="../images/left/select_xl01.png">
                <a href="../teachers/teacher-main.jsp" target="right">管理学生</a>
            </dt>
            <dd class="first_dd"></dd>
            <dd class="first_dd" style="height: 10px;"></dd>
        </dl>
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