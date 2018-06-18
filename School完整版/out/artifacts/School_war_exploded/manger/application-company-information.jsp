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
        .selectbox{ width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
        .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
        .selectbox select option{ padding:5px;}
    </style>
</head>
<body>
    <div class="checkout-title">
        <span><hr class="hrLine" style="width:500px;"/>请审核企业发布招聘信息<hr class="hrLine" style="width:500px;"/></span>
    </div>
    <div id="recruitinformation">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘单位</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">招聘职位</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">工资待遇</td>
                <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">发布时间</td>
                <td width="20%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">是否发布</td>
            </tr>
            <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                <td style="padding:15px;">15231566</td>
                <td style="padding:15px;">架构师</td>
                <td style="padding:15px;">20K</td>
                <td style="padding:15px;">2012-6-9</td>
                <td style="padding:15px;">
                    <div class="selectbox">
                        <select>
                            <option value="0">审核中</option>
                            <option value="1">未审核</option>
                            <option value="2">通过</option>
                            <option value="3">不通过</option>
                        </select>
                    </div>
                    <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="发布" tabindex="3"
                           onclick="javascript:if(confirm('确定要发布吗')){return true;}return false;">
                </td>
            </tr>

            <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                <td style="padding:15px;">15231566</td>
                <td style="padding:15px;">架构师</td>
                <td style="padding:15px;">20K</td>
                <td style="padding:15px;">2012-6-9</td>
                <td style="padding:15px;">
                    <div class="selectbox">
                        <select>
                            <option value="0">审核中</option>
                            <option value="1">未审核</option>
                            <option value="2">通过</option>
                            <option value="3">不通过</option>
                        </select>
                    </div>
                    <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="发布" tabindex="3"
                           onclick="javascript:if(confirm('确定要发布吗')){return true;}return false;">
                </td>
            </tr>

            <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                <td style="padding:15px;">15231566</td>
                <td style="padding:15px;">架构师</td>
                <td style="padding:15px;">20K</td>
                <td style="padding:15px;">2012-6-9</td>
                <td style="padding:15px;">
                    <div class="selectbox">
                        <select>
                            <option value="0">审核中</option>
                            <option value="1">未审核</option>
                            <option value="2">通过</option>
                            <option value="3">不通过</option>
                        </select>
                    </div>
                    <input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="发布" tabindex="3"
                           onclick="javascript:if(confirm('确定要发布吗')){return true;}return false;">
                </td>
            </tr>
        </table>
    </div>
</body>
</html>