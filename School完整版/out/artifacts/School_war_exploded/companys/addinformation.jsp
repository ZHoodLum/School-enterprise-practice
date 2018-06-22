<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addinformation</title>
	<link rel="stylesheet" type="text/css" href="../css/addinformations.css">

</head>
<body>
<div class="container">

	<div class="checkout-title">
		<span><hr class="hrLine" style="width:300px;"/>请填写招聘信息<hr class="hrLine" style="width:300px;"/></span>
	</div>
	<div>
		<form id="myform" name="myform" action="JobInfoAdd" method="post">
			<table border="0" width="100%"  style="text-align: center;">
				<s:iterator var="enterprisename" value="#session.enterlist">
				<tr>
					<td>
						<label>公司名称:</label>
						<p class="lasts">
                            <s:textarea  class="text1" type="text" name="jobinfoVo.ename" value="%{#enterprisename.ename}" readonly="true"></s:textarea>
						</p>
					</td>
				</tr>
					<tr>
						<td>
							<label>招聘详情：</label>
							<p>
                                <s:textarea class="text1" type="text" name="jobinfoVo.jInfo" placeholder="请填写招聘职位的详细信息或者要求"></s:textarea>
							</p>
						</td>
					</tr>
				<tr>
					<td>
						<label>招聘职位:</label>
						<p>
							<s:textarea class="text1" type="text" name="jobinfoVo.job" placeholder="请填写招聘职位，例如程序员，高级架构师等，也可更加详细！"></s:textarea>
						</p>
					</td>
				</tr>
				<tr>
					<td>
						<label>工资待遇:</label>
						<p>
                            <s:textarea  class="text1" type="text" name="jobinfoVo.Wage" placeholder="请填写工资待遇！例如：10k,100k"></s:textarea>
                        </p>
					</td>
				<tr>
					<!--***********************************************提交 重置发布信息按钮***********************************************************************-->
					<td class="lasts" style="float: left;margin: 20px 0 0 200px;">
						<input type="submit" value="提交发布信息" class="btn" style="float: left;">
						<input type="reset" name="button" class="btn" value="重置发布信息" style="float: left;margin-left: 50px;">
					</td>
				</tr>
				</s:iterator>
			</table>
		</form>

	</div>
</div>
</body>
</html>