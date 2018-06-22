<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>mangerpeople</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
    <!--
    下拉框样式
    -->
    <style type="text/css">
        .selectbox{ width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff  right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
        .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
        .selectbox select option{ padding:5px;}
    </style>
</head>
<body>
    <div class="checkout-title">
        <span><hr class="hrLine" style="width:500px;"/>请审核企业发布招聘信息<hr class="hrLine" style="width:500px;"/></span>
    </div>
    <div id="recruitinformation">
        <s:form>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘单位</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">发布时间</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">状态</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">查看</td>
            </tr>
            <s:iterator var="allJobInfo" value="#session.allJobInfoList">
            <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                <td style="padding:15px;"><s:property value="#allJobInfo.ename"/></td>
                <td style="padding:15px;"><s:property value="#allJobInfo.jdate"/> </td>
                <td>
                    <div class="selectbox">
                        <s:if test="#allJobInfo.echeck=='未审核'">
                            <select>
                                <option selected="selected">未审核</option>
                                <option>通过</option>
                                <option>不通过</option>
                            </select>
                        </s:if>
                        <s:elseif test="#allJobInfo.echeck=='通过'">
                            <select>
                                <option>未审核</option>
                                <option selected="selected">通过</option>
                                <option>不通过</option>
                            </select>
                        </s:elseif>
                        <s:else>
                            <select>
                                <option>未审核</option>
                                <option>通过</option>
                                <option selected="selected">不通过</option>
                            </select>
                        </s:else>
                </div>
                </td>
                <td style="padding:15px;">
                    <s:a href="selectJobInfo.action?jid=%{#allJobInfo.jid}">查看详情</s:a>
                </td>
            </tr>
            </s:iterator>
        </table>
        </s:form>
    </div>
</body>
</html>