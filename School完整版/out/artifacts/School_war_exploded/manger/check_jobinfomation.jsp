<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>addinformation</title>
	<link rel="stylesheet" type="text/css" href="../css/check_jobinfomation.css">

</head>
<body>
	<div class="container">

        <div class="checkout-title">
            <span><hr class="hrLine" style="width:300px;"/>请审核招聘信息<hr class="hrLine" style="width:300px;"/></span>
        </div>
        <div>
        	<s:form id="myform" name="myform">
				<s:iterator var="jobInfolist" value="#session.jobInfolist">
		        <table border="0" width="100%"  style="text-align: center;">
		            <tr>
		                <td>
		                   <label>公司名称:</label>
		                   <p>
							   <s:property value="#jobInfolist.ename"/>
		                   </p>
		                </td>
		            </tr>
		            <tr>    
		                <td>
		                	<label>招聘职位:</label>
		                   <p>
							   <s:property value="#jobInfolist.job"/>
		                   </p>
		                </td>
		            </tr>

					<tr>
						<td>
							<label>信息详情:</label>
							<p>
								<s:property value="#jobInfolist.jinfo"/>
							</p>
						</td>
					<tr>

		            <tr>
		                <td>
		                	<label>工资待遇:</label>
							<p>
								<s:property value="#jobInfolist.Wage"/>
							</p>
		                </td>
					<tr>
					<tr>
						<td>
							<label>发布时间:</label>
							<p>
								<s:property value="#jobInfolist.jdate"/>
							</p>
						</td>
					<tr>
					<tr>
						<td>
							<label>审核状态:</label>
							<p>
								<s:property value="#jobInfolist.eCheck"/>
							</p>
						</td>
					<tr>

						<!--***********************************************提交 重置发布信息按钮***********************************************************************-->
						<td style="text-align: center;">
							<s:a href="updateJobStatus?jid=%{#jobInfolist.jId}&status=%{#session.status1}" class="btn" >通过</s:a>
							<s:a href="updateJobStatus?jid=%{#jobInfolist.jId}&status=%{#session.status2}" class="btn">不通过</s:a>
						</td>
					</tr>
		        </table>
				</s:iterator>
	        </s:form>
		</div>
	</div>
</body>
</html>