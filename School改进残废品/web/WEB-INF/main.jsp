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
<!-- style="background-color: mintcream"-->
<div>
    <div id="recruitstudent">

        <h1>实习，你真的准备好了吗？</h1>

        <p id="p2">一、请准备好合适的时间，并且诚实地告诉面试官，你究竟能来几天。能来的那几天是否有课，你长期旷课的后果是否知道。
            请不要面试的时候答应4天，开始工作后，发现扛不住了，改成三天。你的诚信令我不安。</p>
        <p id="p2">二、请处理好校园事务，不要带到公司来。不要在领导走到你跟前时，紧急关掉MSN、飞信等聊天界面和不相关网页，公司花钱请你来工作，
            不是请你坐在这里君临天下、坐镇指挥、威慑四方。也许你没有耽误工作，但是你会让公司觉得你不安定。</p>
        <p id="p2">三、请学会正确认识自己的能力，不要自以为是一抓一大把的牛人。实习意味着每天至少8小时在公司呆着，不能处理诸如社团、学生会、论文、课业等。
            倘若你处理不好，请学会放弃，无论是放弃实习还是放弃学生会。如果你加班到深夜，我理解你的挣扎、纠结，可我什么都做不了。</p>
        <p id="p2">四、请记得你是员工，不是学生。不要总用“学生”这个理由让自己做事不完美。
            随便写两句话就扔给组长的PPT、看都不看就胡编的英文报告、不来公司从不请假，或是半夜请假、迟到早退毫无征兆、晚来早走理所当然，这让我们感到很遗憾。</p>
        <p id="p2">五、请准备好体力和意志力。商业区和校园终不是宿舍和食堂的距离，特别是一线城市的实习生，坐地铁坐一个多小时是常事，
            要么租房子、要么坚持来回跑，请做好思想准备。</p><br><br>

        <h1>实习途径</h1>
        <div>
            <table border="0"  style="text-align: center;" width="100%">
                <tr>
                    <td>
                        <div class="comment_bubble">
                            <p>招聘网站</p>
                        </div>
                    </td>
                    <td>
                        <div class="comment_bubble">
                            <p>学校资源</p>
                        </div>
                    </td>
                    <td>
                        <div class="comment_bubble">
                            <p>企业宣讲</p>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="comment_bubble">
                            <p>知乎平台</p>
                        </div>
                    </td>
                    <td>
                        <div class="comment_bubble">
                            <p>Linkedin</p>
                        </div>
                    </td>
                    <td>
                        <div class="comment_bubble">
                            <p>创业公司</p>
                        </div>
                    </td>
                </tr>

            </table>
        </div>
    </div>
</div>
<!--界面底部-->
<div id="footers">
    <div style="margin-top: 40px;text-align: center">
        <table border="0" width="100%">
            <tr>
                <td><p style="margin-top: 20px;">频道导航</p></td>
                <td><p style="margin-top: 20px;">用户中心</p></td>
                <td><p style="margin-top: 20px;">联系我们</p></td>
            </tr>

            <tr>
                <td><p><a href="javascript:scroll(0,0)" style="text-decoration:none;color: #96c7ec">HOME</a></p></td>
                <td><p>使用帮助</p></td>
                <td><p>关于我们</p></td>
            </tr>
            <tr>
                <td><p><a href="#recruitinformation" style="text-decoration:none;color: #96c7ec">招聘信息</a></p></td>
                <td><p>用户协议</p></td>
                <td><p></p></td>
            </tr>
            <tr>
                <td><p><a href="#recruitstudentimages2" style="text-decoration:none;color: #96c7ec">招生向导</a></p></td>
                <td><p>防骗指南</p></td>
                <td><p></p></td>
            </tr>
            <tr>
                <td><p></p></td>
                <td><p></p></td>
                <td><p></p></td>
            </tr>
        </table>
    </div>
</div>
</div>
</body>
</html>