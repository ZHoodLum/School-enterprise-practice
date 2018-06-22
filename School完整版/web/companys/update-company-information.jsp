<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>updatemanger-information</title>
    <link rel="stylesheet" type="text/css" href="../css/manger-addinformation.css">
    <style type="text/css">
        .selectbox{ float:left;margin-left:10px;width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
        .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
        .selectbox select option{ padding:5px;}
    </style>
</head>
<body>
<div class="container">

    <div class="checkout-title">
        <span><hr class="hrLine" style="width:300px;"/>修改企业信息<hr class="hrLine" style="width:300px;"/></span>
    </div>

    <div>
        <s:form id="myform" name="myform" theme="simple">
            <s:iterator var="list" value="#session.list" >
            <table border="0" width="100%"  style="text-align: center;margin-left: 150px;">
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>企业账号:</h3>
                                <p>
                                    <s:property value="#list.eid"></s:property>
                                    </p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>企业名称:</h3>

                                <p><s:textfield value="%{#list.ename}"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>登陆密码:</h3>
                                <p><s:textfield value="%{#list.epwd}"></s:textfield></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>地址:</h3>
                                <p><s:textfield value="%{#list.eAdd}"></s:textfield></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>电话:</h3>
                                <p><s:textfield value="%{#list.ephone}"></s:textfield> </p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>邮箱:</h3>
                                <p><s:textfield value="%{#list.email}"></s:textfield> </p>
                            </li>
                        </ul>
                    </td>
                </tr>


                <tr>
                    <td>
                        <a href="javascript:;" class="btn" style="float: left;margin-left: 320px;">保存修改信息</a>
                    </td>
                </tr>

            </table>
            </s:iterator>
        </s:form>

    </div>
</div>
</body>
</html>