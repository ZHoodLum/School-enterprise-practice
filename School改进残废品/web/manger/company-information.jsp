<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>company-information</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
    <style type="text/css">
        a{
            padding:0 6px 0 6px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="checkout-title">
        <span><hr class="hrLine" style="width:500px;"/>企业信息查询<hr class="hrLine" style="width:500px;"/></span>
    </div>
    <div id="recruitinformation">
        <s:form theme="simple">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">

                <tr align="center">
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">企业编号</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">企业名称</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">企业登陆密码</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">企业地址</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">企业电话</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">企业邮箱</td>
                    <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">操作</td>
                </tr>
                <s:iterator var="allEnterPrise" value="#session.allEnterPriseList">
                    <tr align="center" style="padding:10px; border-bottom: 1px dashed #6bb642;">
                        <td style="padding:15px;"><s:property value="#allEnterPrise.eid"/></td>
                        <td style="padding:15px;"><s:property value="#allEnterPrise.ename"/></td>
                        <td style="padding:15px;"><s:property value="#allEnterPrise.epwd"/></td>
                        <td style="padding:15px;"><s:property value="#allEnterPrise.eadd"/></td>
                        <td style="padding:15px;"><s:property value="#allEnterPrise.ephone"/></td>
                        <td style="padding:15px;"><s:property value="#allEnterPrise.email"/></td>
                        <td align="center"><a href="update-company-information.jsp">修改</a>||<s:a href="deleteEnterPrise?eid=%{#allEnterPrise.eid}">删除</s:a></td>
                </tr>
                </s:iterator>
            </table>
        </s:form>
    </div>
</body>
</html>