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
 	<frameset rows="100%" cols="*" frameborder="yes" border="1" framespacing="1">


		  <frameset cols="14%,86%" frameborder="yes" framespacing="1">

		  <frame src="../teachers/teacher-left.jsp" name="left" allowTransparency="true" scrolling="auto" noresize="noresize">

			  <frameset rows="6%,89%,5%" frameborder="yes" framespacing="1">
				  <frame src="../teachers/teacher-head.jsp" name="head" allowTransparency="true" scrolling="no" >
				  <frame src="../teachers/teacher-right.jsp" name="right" allowTransparency="true" scrolling="no">
				  <frame src="footer.jsp" name="footer" allowTransparency="true" scrolling="no" >
			  </frameset>

		  </frameset>

	</frameset>
<body>
	
</body>
</html>