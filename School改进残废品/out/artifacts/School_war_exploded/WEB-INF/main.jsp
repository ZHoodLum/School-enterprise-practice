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
						<!--<span class="main2"><a href="#news">最新新闻</a></span>-->
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
		<!--招聘信息-->
		<div id="recruitinformation1"></div>
		<div id="recruitinformation">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed;">
				<tr align="center">
					<td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘公司</td>
					<td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘职位</td>
					<td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">发布时间</td>
					<td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">详情信息</td>
					<td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;"></td>
				</tr>
				<s:iterator var="job" value="#session.listJob">
				<tr align="center" style="border-bottom: 2px dashed #6bb642;">
					<td><s:property value="#job.ename"></s:property></td>
					<td><s:property value="#job.job"></s:property> </td>
					<td><s:property value="#job.jdate"></s:property></td>
					<td style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden; "><s:property value="#job.jInfo"></s:property></td>
					<td style="padding:15px;">
						<div class="theme-buy">
							<s:a class="btn btn-large theme-login" href="getOneJobinfo.action?jid=%{#job.jid}">查看详情</s:a>
						</div>
					</td>
				</tr>
				</s:iterator>
			</table>
			<%--第  <s:property value="#request.pageBean.page"/>/<s:property value="#request.pageBean.totalPage"/>页--%>
			<%--<s:iterator var="i" begin="1" end="#request.pageBean.totalPage" step="1">--%>
				<%--<s:if test="#request.pageBean.page==#i">--%>
					<%--<span class="currentPage"><s:property value="#i"/></span>--%>
				<%--</s:if>--%>
				<%--<s:else>--%>
					<%--<a href=".action?page=<s:property value="#i"/>"><s:property value="#i"/></a>--%>
				<%--</s:else>--%>
			<%--</s:iterator>--%>
		</div>
		<!--招生向导-->
		<img id="recruitstudentimages2">
		<div style="background-color: mintcream">
			<div id="recruitstudent">
				<h1>实习，你真的准备好了吗？</h1>

				<p id="p2">万事皆有取舍，选择了实习，就有可能耽误学业，这个没有对错之分，全取决于个人的选择，但是一旦选择实习，就不要整天念叨着要回去上课之类的话。
					一周实习4天还说早上要上课不能来，那你就真的不用来了。其次，你要准备一份像样的简历，一份简历虽然说明不了太大的问题，但是至少能看出一个人的态度，
					不需要你多牛多厉害，至少你得认真对待这件事。然后，你得确定一个行业，术业有专攻，实习也要专攻，选择了一个行业就不要跳来跳去，雇主喜欢专一的人。
					最后，心态与态度要平和，不要真以为什么天降大任于你，你是未来的CEO，心高气傲，总想着要做出惊天伟业，而不愿意做那些琐碎打杂且无聊的工作。
					其实，很多人对实习生的要求是：不要牛人，要那些踏实肯干的人，有手有脚有脑子，能够坚持干下去就行。
					总结起来就两个词：踏实、坚持。可就这两个看似简单的词很多人都不能做到。</p><br><br>
				<h1>找实习的途径和技巧</h1>



			</div>
		</div>
		<!--界面底部-->
		<div id="footers">
			<tr width="100%">
				<td>
					<div style="text-align: center;font-size: 13px;margin-top:10px">
						客服致电热线：666666666666&nbsp;&nbsp;
						未经本站同意，不得私自盈利，如发现需承担法律责任.
					</div>
				</td>
			</tr>
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