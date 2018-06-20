<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

  <title>Dynamic Scrolling Shadow</title>

  <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
</head>
<body>
  <div id="demo-bar" class="bottom right"></div>
  <div class="container">
    <h1>招聘信息详情</h1>
    <div class="grid-container blue">
      <div class="shadow-box">
        	<!---->
        	<div class="theme-popover">
			     <div class="theme-poptit"> </div>
			     <div class="theme-popbod" style="font-size: 18px;
    color: black;">
					 <s:iterator var="jobinfo" value="#session.jobInfoList">
					 <ol>
					<li>
						<strong>招聘单位：</strong>
						<s:textarea name="fffff" class="textarea1" value="%{#jobinfo.ename}"></s:textarea>
					</li>
					<li>
						<strong>招聘职位：</strong>
						<s:textarea name="fffff" class="textarea1" value="%{#jobinfo.job}"/>
					</li>
					<li>
						<strong>详细信息：</strong>
						<s:textarea name="fffff" class="textarea2" style="height:300px;" value="%{#jobinfo.jInfo}"/>
					</li>
					<li>
						<strong>工资待遇：</strong>
						<s:textarea name="fffff" class="textarea1" value="%{#jobinfo.wage}"/>
					</li>
					<li>
						<strong>发布时间：</strong>
						<s:textarea name="fffff" class="textarea1" value="%{#jobinfo.jdate}"/>
					</li>
					<li>
						<s:a href="applyResume.action?jid=%{#jobinfo.jid}" class="btn">提交简历</s:a>
						<a href="/WEB-INF/main.jsp" class="btn">返回首页</a>
					</li>
				</ol>
					 </s:iterator>
				 </div>
			</div>

        <div class="shadows">
          <div class="shadow top"></div>
          <div class="shadow bottom"></div>
        </div>
      </div>
    </div>
  </div>
  <!-- Javascript -->
  <script src="../js/jquery.min.js"></script>
  <script src="../js/init.js"></script>
  <script> 
    $(function(){
      $("#demo-bar").load("../demo-bar.html"); 
    });
  </script> 
</body>
</html>

