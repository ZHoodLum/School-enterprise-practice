<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>校园实习信息网 enterprise cooperation</title>
	<!--整体界面布局-->
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	<!--登陆界面 弹窗-->
	<link rel="stylesheet" type="text/css" media="all" href="../css/login.css">
	<script type="text/javascript" src="js/loginjquery-1.9.1.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="../js/loginjquery.leanModal.min.js"></script>
	<!--详情信息弹窗-->
	<link rel="stylesheet" type="text/css" href="../css/lanrenzhijia.css">
	<script type="text/javascript" src="../js/jquery-1.8.0.0.min.js"></script>
	<script>
        jQuery(document).ready(function($) {
            $('.theme-login').click(function(){
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function(){
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover').slideUp(200);
            })

        })
	</script>
</head>
<body>
	<div>
<!--********************************************************************界面头部*************************************************************************************************-->
		<div id="titletop">
			<!--登陆注册按钮 login-->
			<img id="login">
				<span id="title">School enterprise cooperation</span>
<!--*******************************************************登陆前  登陆者***********************************************************************************************-->
<s:if test="#session.listStudent!=null">
    <span class="title_login1">
        <a href="../manger/update-student-information.jsp">
            <img src="../images/loginusers.png"  id="circle">
			<s:iterator var="student" value="#session.listStudent">
			<span><s:property value="#student.Sname"/></span>
			</s:iterator>
        </a>
		<s:a href="everyOneLogout.action">注销</s:a>
		<s:include value="xuanzhuan.jsp"/>
    </span>
</s:if>
<s:else>
                            <span class="title_login1">
                                <a href="../login/login.jsp" id="modaltrigger">登录&nbsp;</a>
                                <img src="../images/timg.jpg" style="background-repeat:no-repeat;background-position:-25px -374px;height:16px;width:3px;"/>&nbsp;
                                <a href="../registers/register.jsp"> 注册</a>
								<s:include value="xuanzhuan.jsp"/>
                            </span>
</s:else>
                        </div>
                        <!--导航栏-->
			<div id="top">
				<!--标题栏置顶-->
				<div id="titlecontent">
					<div id="titlecontent_right">
						<span class="main1"><a href="javascript:scroll(0,0)">HOME</a></span>
						<span class="main2"><s:a href="getAllJobInfoFromOtherClassPage?page=1">招聘信息</s:a></span>
						<span class="main2"><a href="../login/contact.jsp">简历</a></span>
					</div>
				</div>
			</div>

		</div>
<!--*********************************************************************隐藏的登陆界面部分***********************************************************************************-->
		<div id="loginmodal" style="display:none;">

			<h1>User Login</h1>
			<!-- 响应action-->
				<form id="loginform" name="loginform" method="post" action="*************">

					<label for="username">用户名:</label>
					<!-- 登录名-->
					<input type="text" name="username" id="username" class="txtfield" tabindex="1">

					<label for="password">密码:</label>
					<!--密码-->
					<input type="password" name="password" id="password" class="txtfield" tabindex="2">
					<div class="center">
						<input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="登陆" tabindex="3">
						<input type="button" name="registerbtn" id="registerbtn" class="flatbtn-blu hidemodal" value="注册" tabindex="3"
							   onclick="document.location.href='register/register.html'">
					</div>
				</form>
		</div>
<!--********************************************************************界面正文************************************************************************************************-->
			<tr width="100%">
				<td>
					<div style="text-align: center;font-size: 13px;">
						本站请使用IE6.0或以上版本 1024*768为最佳显示效果
					</div>
				</td>
			</tr>
			<tr width="100%">
				<td>
					<div style="text-align: center;font-size: 13px;margin-bottom:10px">
						CopyRight &copy; 2008 www.zbaccp.com
					</div>
				</td>
			</tr>
			<!--页面尾部-->
		</div>
	</div>
</body>
</html>
<!--响应登陆界面-->
<script type="text/javascript">
    $(function(){
        $('#loginform').submit(function(e){
            return false;
        });
        $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
    });
</script>