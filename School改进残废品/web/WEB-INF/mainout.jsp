<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
</head>
<body>
	<div>
<!--********************************************************************界面头部*************************************************************************************************-->
		<div id="titletop">
			<!--登陆注册按钮 login-->
			<img id="login">
				<span id="title">School enterprise cooperation</span>
<!--*******************************************************登陆前  登陆者***********************************************************************************************-->
			<!--
                                        <span class="title_login1">
                                            <a href="login/login.jsp" id="modaltrigger">登录&nbsp;</a>
                                            <img src="images/timg.jpg" style="background-repeat:no-repeat;background-position:-25px -374px;height:16px;width:3px;"/>&nbsp;
                                            <a href="registers/register.jsp"> 注册</a>
                                        </span>

                        <!--*******************************************************登陆后  登陆者***********************************************************************************************-->

                            <span class="title_login1">
                                <a href="../manger/update-student-information.jsp">
                                    <img src="../images/loginusers.png" id="circle">
                                    <span>胡歌</span>
                                </a>
                            </span>
                             -->
                        </div>
                        <!--导航栏-->
			<div id="top">
				<!--标题栏置顶-->
				<div id="titlecontent">
					<div id="titlecontent_right">
						<span class="main1"><a href="javascript:scroll(0,0)">HOME</a></span>
						<span class="main2"><a href="#recruitinformation1">招聘信息</a></span>
						<!--<span class="main2"><a href="#news">最新新闻</a></span>-->
						<span class="main2"><a href="#recruitstudentimages2">实习向导</a></span>
						<span class="main2"><a href="#recruitstudentimages2">个人资料</a></span>
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

			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr align="center">
					<th width="20%"  style="border-bottom: 2px dashed #6bb642;">招聘公司</th>
					<th width="20%"  style="border-bottom: 2px dashed #6bb642;">招聘职位</th>
					<th width="20%"  style=" border-bottom: 2px dashed #6bb642;">工资待遇</th>
					<th width="20%"  style=" border-bottom: 2px dashed #6bb642;">发布时间</th>
					<th width="20%"  style="padding:15px; border-bottom: 2px dashed #6bb642;">查看详情</th>
				</tr>
				<s:iterator var="job" value="#session.listJob">
				<tr align="center" style="border-bottom: 2px dashed #6bb642;">

					<td ><s:property value="#job.ename"></s:property></td>
					<td ><s:property value="#job.job"></s:property> </td>
					<td ><s:property value="#job.wage"></s:property> </td>
					<td ><s:property value="#job.jdate"></s:property></td>	·
					<td style="padding:15px;"><a href="">查看详情</a> </td>
				</tr>

				</s:iterator>


			</table>

		</div>
		<!--新闻信息
		<div id="news">
			<table>
				<tr align="center" bgcolor="#e3F4F7" style="width: 100%;border: 5px;height: 1000px;">
					<td width="14%" bgcolor="#F9D16B">hhhhhh</td>
					<td width="14%" bgcolor="#F9D16B">afafafaf</td>
					<td width="14%" bgcolor="#F9D16B">fafafafaf</td>
				</tr>
			</table>
		</div>-->

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

				<p id="p1">1.通过各类招聘网站投递简历</p><br>

				<p id="p2">所有人都走的路很安全，但是路上往往塞满了车，在招聘网站上投递简历就属于这种情况，方便快捷就是成功率低。但是千万不要因为这种方法传统、成功率低就放弃使用此类方法，
					恰恰有很多人就是使用此类方法找到实习的。此类方法的优势是实习信息多，选择多，也给了你海投简历的机会，投递简历不过举手之间，多给自己一个机会有何不可呢？
					可供选择的知名招聘网站有应届生求职网、前程无忧（51job）、智联招聘、中华英才网、大街网……很多人抱怨说在求职网站逛了一圈，
					发现大多数的都是北上广深的实习信息，本地的实习信息几乎没有，针对于这种情况可以多去本地的招聘网站以及本土论坛下的求职招聘版块看一下。</p><br>

				<p id="p1">2.发动你所有的亲属资源</p><br>

				<p id="p2">Guanxi,这个来自的中国特色词汇，已经作为『中国特色』成为了英文单词，算是一种独特的文化输出吧。其实，全世界都在讲guanxi,美国名牌大学会倾向于招收校友子女，
				这也是关系的一种，只不过大多时候中国语境下的关系有点官商勾结的意味罢了。不偷也不抢，更没有损害公共利益，动用关系找个实习没什么不好意思的。
				千万不要因为所谓的自命清高，就放弃使用你的亲戚资源。有时候，你只需要别人的一点点小的帮助，就能成功。首先列出你所有的七大姨八大姑，
				能扯上亲戚关系的全部算上，了解他们所从事的行业，看是否有你的目标行业，然后明确告诉他们你需要一个实习，看能否给你一个机会，并表示自己一定会努力做好工作。
				中国人特别讲究面子，你的表现也代表着你亲戚的面子，千万不要让你的亲戚因为你而丢脸。在职场，不仅要充值智商，更要充值情商。</p><br>

				<p id="p1">3.学校资源</p><br>

				<p id="p2">很多人常常抱怨找不到实习，可是却连自己学校主页上求职招聘版块上的实习信息都没看过，这就叫守着水井然后叫唤没水喝。找实习，不要放过一切你可以利用的资源。
				学校的就业信息网站一般都有发布本地的实习信息，如果你还是觉得不满意，多去本地其他大学的官网主页找，特别是本地的985、211大学，上面的实习信息绝对够用。
				其次，多结识你的学长、学姐以及同级的同学，如果他们已经毕业工作或者正在某企业实习，Don’t be shy，快速勾搭，想办法让他们帮你内推，内推才是王道。
				学校一般也有就业辅导中心以及校友会，多关注他们的动态，需要找实习的时候大可联系校友，让他给你一个面试机会。不要说你的学校如何差，再差的学校也会有校友资源，只是你没发现利用而已。</p><br>

				<p id="p1">4.利用新媒体找实习</p><br>

				<p id="p2">找实习也需要与时俱进，既然现在新媒体如此火爆，大可利用新媒体来找实习。在微博以及微信可以多关注一些发布实习信息的公众号，说不定其中就有你的菜。
				其次，可以尝试一下逆向思维，用『微博实习』的方法让实习来找你，在微博上发布自己的简历信息并明确找实习的意愿，再插入话题#微简历#等，
				并@当地的招聘网站或者一些义务转发简历的微博号（简历义工为代表）求转发。同时，也可以多关注一下意向企业的微信公众号，可直接向其询问实习相关信息。</p><br>

				<p id="p1">5.利用各类讲座找实习</p><br>

				<p id="p2">一般学校要邀请很多知名企业家或者企业高管到校园中举办各类讲座，如果你想进那个企业实习的话，这就是一个好机会。在活动过程中，多参与互动，
				争取表现自己，然后在讲座结束后，可以马上和老总交流，询问是否需要实习生，是否能够给你一个机会，一般情况下他都不好拒绝。
				不要害怕丢脸，做这种事情所体现出来的勇气本身就值得赞誉。同时，也可以多参加社会的活动、某行业讲座或者研讨会，
				等大佬们发完言之后，疾步如飞，飞上去要个名片，之后再于网络上交流，通过这种方法找实习说不定有奇效。要相信，人与人在现实中的沟通交流永远要比在网络中沟通交流真诚实在。</p><br>

				<p id="p1">6.知乎</p><br>

				<p id="p2">知乎本身作为一个高质量的知识分享平台，聚集了一大批优秀的职场人士，他们有的时不时也会在知乎发布实习信息（我关注的人就有不少），
				或者你也可以直接私信他们询问是否能提供你一份实习机会。在知乎，你的回答也是你简历中的一部分，如果你经常写高质量的回答，自然会有人注意到你，
				找到实习可以说是轻而易举的事情。有一个典型的例子是我一个在网上认识的朋友，通过在知乎专栏发表文章推销自己，表明自己想求得一份实习的意愿，然后最后顺利找到一份实习。
				多在知乎分享干货，写高质量答案，积累粉丝，到时候说不定你的粉丝中就有你未来的老板呢。</p><br>

				<p id="p1">7.Linkedin</p><br>

				<p id="p2">Linkedin是一个全球最知名的职场社交平台，利用这个平台，你可以做很多事情，包括找实习。首先确定你所想实习的行业，然后寻找有意向的公司，看有哪些校友在里面工作。
				接着，就私信接触你的校友吧，但是要特别注意私信的写作方式，有礼貌主题也要表达明确。</p><br>

				<p id="p1">8.从创业公司开始</p><br>

				<p id="p2">世界500强，大企业谁都想去，但正是谁都想去导致大多数人注定去不了，既然这样，为什么不给自己一个新的选择，去创业公司呢？
				大公司的大固然让依附于他的人很有一种莫名的自豪感，但他的大也会显得每个人都很渺小，别说实习生，正式的员工也不过只是机器上的一颗小螺丝罢了。
				但在创业公司的小舞台上，每个人都有机会展示自己的价值，哪怕你是实习生。从学习成长的角度来讲，在创业公司实习绝对会让你收获更多，这也是人生中难得的体验。
				总之，在大学不要让自己闲着，趁年轻多奋斗！人生就是不断前进的旅程，这一路，梦想与坚持才是最好的陪伴！给所有正在奋斗的人说声“加油”！</p><br>

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