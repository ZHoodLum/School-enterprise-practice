<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Recruitmentinformation</title>
    <!--整体界面布局-->
    <link rel="stylesheet" type="text/css" href="../css/main2.css">

</head>
<body>
<div>
    <!--导航栏-->
    <div id="top">
        <!--标题栏置顶-->
        <div id="titlecontent">
            <div id="titlecontent_right">
                <span class="main1"><s:a href="aaa.action">HOME</s:a></span>
                <span class="main2"><a href="../login/contact.jsp">我的简历</a></span>
            </div>
        </div>
    </div>
</div>
<!--********************************************************************界面正文************************************************************************************************-->
<!--招聘信息-->
<div id="recruitinformation1"></div>
<div id="recruitinformation">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed;">
        <tr align="center">
            <td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘公司</td>
            <td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘职位</td>
            <td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">发布时间</td>
            <td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;">详情信息</td>
            <td width="width:6px;"  style="padding:10px; border-bottom: 2px dashed #6bb642;"></td>
        </tr>
        <s:iterator var="job" value="#request.pageBean.List">
            <tr align="center" style="border-bottom: 2px dashed #6bb642;">
                <td><s:property value="#job.ename"></s:property></td>
                <td><s:property value="#job.job"></s:property> </td>
                <td><s:property value="#job.jdate"></s:property></td>
                <td style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden; "><s:property value="#job.jInfo"></s:property></td>
                <td style="padding:15px;">
                    <div class="theme-buy">
                        <s:a class="btn btn-large theme-login" href="getOneJobinfo.action?jid=%{#job.jid}">查看详情</s:a>
                    </div>
                </td>
            </tr>
        </s:iterator>
    </table>
    第  <s:property value="#request.pageBean.page"/>/<s:property value="#request.pageBean.totalPage"/>页
    <s:iterator var="i" begin="1" end="#request.pageBean.totalPage" step="1">
    <s:if test="#request.pageBean.page==#i">
    <span class="currentPage"><s:property value="#i"/></span>
    </s:if>
    <s:else>
    <a href="getAllJobInfoFromOtherClassPage.action?page=<s:property value="#i"/>"><s:property value="#i"/></a>
    </s:else>
    </s:iterator>
</div>
</body>
</html>