<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>addinformation</title>
	<link rel="stylesheet" type="text/css" href="../css3/addinformation.css">

</head>
<body>
	<div class="container">

        <div class="checkout-title">
            <span><hr class="hrLine" style="width:300px;"/>查看简历信息<hr class="hrLine" style="width:300px;"/></span>
        </div>
        <div style="margin-top: 20px;margin-left: 80px;">
        	<form id="myform" name="myform" action="***********" methd="post">
		        <table border="0" width="90%">
					<s:iterator var="resumeList" value="#session.resumeList">
					<tr>
						<td>
							<label class="label2">学号:</label>
							<textfield>
								<s:property value="#resumeList.sno"/>
							</textfield>
						</td>
						<td>
							<label class="label2">姓名:</label>
							<textfield>
								<s:property value="#resumeList.sname"/>
							</textfield>
						</td>
						<td>
							<label class="label2">性别:</label>
							<textfield>
								<s:property value="#resumeList.gender"/>
							</textfield>
						</td>
					</tr>

					<tr>
						<td>
							<label class="label2">民族:</label>
							<textfield>
								<s:property value="#resumeList.nationality"/>
							</textfield>
						</td>
						<td>
							<label class="label2">生日:</label>
							<textfield>
								<s:property value="#resumeList.birthday"/>
							</textfield>
						</td>
					<tr>

					<tr>
						<td>
							<label class="label2">籍贯:</label>
							<textfield>
								<s:property value="#resumeList.city"/>
							</textfield>
						</td>
						<td>
							<label class="label2">政治面貌:</label>
							<textfield>
								<s:property value="#resumeList.politics"/>
							</textfield>
						</td>
					</tr>

					<tr>
						<td>
							<label class="label2">健康状况:</label>
							<textfield>
								<s:property value="#resumeList.health"/>
							</textfield>
						</td>
						<td>
							<label class="label2">毕业学校:</label>
							<textfield>
								<s:property value="#resumeList.college"/>
							</textfield>
						</td>
					</tr>

					<tr>
						<td>
							<label class="label2">学历:</label>
							<textfield>
								<s:property value="#resumeList.education"/>
							</textfield>
						</td>
						<td>
							<label class="label2">专业:</label>
							<textfield>
								<s:property value="#resumeList.major"/>
							</textfield>
						</td>
					</tr>

					<tr>
						<td>
							<label class="label2">毕业时间:</label>
							<textfield>
								<s:property value="#resumeList.graduateTime"/>
							</textfield>
						</td>
						<td>
							<label class="label2">电子邮件:</label>
							<textfield>
								<s:property value="#resumeList.email"/>
							</textfield>
						</td>
					</tr>

					<tr>
						<td colspan="2">
							<label class="label2">学习时间:</label>
							<textfield>
								<s:property value="#resumeList.studentContinueTime"/>
							</textfield>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label class="label2">主修:</label>
							<textarea class="text1" type="text">
							<s:property value="#resumeList.majorCourse"/>
		                   </textarea>
						</td>
					</tr>

					<tr>
						<td colspan="2">
							<label class="label2">获得证书:</label>
							<textarea class="text1" type="text">
							<s:property value="#resumeList.credential"/>
		                   </textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label class="label2">自我评价:</label>
							<textarea class="text1" type="text">
							<s:property value="#resumeList.selfEvaluation"/>
		                   </textarea>
						</td>
					</tr>
					<tr>
						<td style="text-align: center;" colspan="2">
							<s:a href="addStudentToEnterPrise?sno=%{#resumeList.sno}" class="btn" >允许实习</s:a>
							<s:a href="deleteStudentToEnterPrise?sno=%{#resumeList.sno}" class="btn">不允许实习</s:a>
						</td>
					</tr>
				</table>
				</s:iterator>
		        </table>
	        </form>

		</div>
	</div>
</body>
</html>