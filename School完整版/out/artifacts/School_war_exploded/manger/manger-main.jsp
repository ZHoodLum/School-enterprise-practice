<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
	<!--
		rows 列的高度
		cols 行的宽度
		style="background-color:#E6E6FA;"
	-->
 	<frameset rows="10%,90%" cols="*" frameborder="yes" border="1" framespacing="1">
		<frame src="manger-head.jsp" name="head" allowTransparency="true" scrolling="no" >

		  <frameset cols="14%,86%" frameborder="yes" framespacing="1">

		  <frame src="manger-left.jsp" name="left" allowTransparency="true" scrolling="auto" noresize="noresize">

			  <frameset rows="95%,5%" frameborder="yes" framespacing="1">
				  <frame src="manger-right.jsp" name="right" allowTransparency="true" scrolling="no">
				  <frame src="../footer.jsp" name="footer" allowTransparency="true" scrolling="no" >
			  </frameset>

		  </frameset>

	</frameset>
<body>
	
</body>
</html>