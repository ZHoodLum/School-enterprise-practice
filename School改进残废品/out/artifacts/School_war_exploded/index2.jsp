<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/5
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="CompanyLogins" theme="simple" method="post">

    <s:select name="en" list="{'企业','教师'}"></s:select>
    <s:textfield name="uname"></s:textfield>
    <s:textfield  name="upwd"></s:textfield>
    <s:submit value="添加"/>
    <s:reset  value="重置"/>
</s:form>
</body>
</html>
