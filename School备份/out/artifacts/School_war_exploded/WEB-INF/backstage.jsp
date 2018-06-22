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

 	<frameset rows="25%,70%,5%" cols="*" frameborder="yes" border="1" framespacing="1">
		  <frame src="../head.jsp" name="head" allowTransparency="true" scrolling="no" >
		  
		  <frameset cols="20%,80%" frameborder="yes" framespacing="1">
		  <frame src="../left.jsp" name="left" allowTransparency="true" scrolling="auto" noresize="noresize">
		  <frame src="../right.html" name="right" allowTransparency="true" scrolling="no">
		  </frameset>
		  <frame src="../footer.html" name="footer" allowTransparency="true" scrolling="no" >
	</frameset>

<body>

</body>
</html>