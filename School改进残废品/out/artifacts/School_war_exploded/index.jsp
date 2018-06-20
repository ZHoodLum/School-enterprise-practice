<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/2
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <table border="1">

    <tr>
        <s:form action="SelectOne" theme="simple" method="post">
            请选择检索条件
            <s:select name="select" list="{'按编号','按名称'}"></s:select>
            <s:textfield  name="en"></s:textfield>
            <s:submit value="添加"/>
            <s:reset  value="重置"/>
        </s:form>
    </tr>
        <s:iterator var="enter" value="#session.list">
      <tr>
        <td><s:property value="#enter.eid"/> </td>
        <td><s:property value="#enter.ename"/> </td>
        <td><s:property value="#enter.epwd"/> </td>
        <td><s:property value="#enter.eintroduce"/> </td>
        <td><s:property value="#enter.eadd"/></td>
        <td><s:property value="#enter.ephone"/></td>
        <td><s:property value="#enter.email"/></td>
        <td><s:property value="#enter.emanager"/></td>
        <td><s:a href="deleteEnter?eid=%{#enter.eid}">删除</s:a></td>
      </tr>
  </s:iterator>
    </table>
  </body>
</html>
