<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
	<!--
		rows 列的高度
		cols 行的宽度
		style="background-color:#E6E6FA;"
	-->
 	<frameset rows="6%,94%" cols="*" frameborder="yes" border="1" framespacing="1">

			<frame src="../teachers/main1.jsp" name="head" allowTransparency="true" scrolling="no" >

		  <frameset cols="14%,86%" frameborder="yes" framespacing="1">

		  	<frame src="../teachers/teacherpage.jsp" name="left" allowTransparency="true" scrolling="no" noresize="noresize">

			  <frameset rows="100%" frameborder="yes" framespacing="1">
				  <frame src="" name="right" allowTransparency="true" scrolling="no">
			  </frameset>

		  </frameset>

	</frameset>
<body>
	
</body>
</html>