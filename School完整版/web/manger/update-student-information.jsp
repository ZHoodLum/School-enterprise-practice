<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>updatemanger-information</title>
    <link rel="stylesheet" type="text/css" href="../css/manger-addinformation.css">
    <!--
 下拉框样式
 -->
    <style type="text/css">
        .selectbox{ float:left;margin-left:10px;width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
        .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
        .selectbox select option{ padding:5px;}
    </style>
</head>
<body>
<div class="container">

    <div class="checkout-title">
        <span><hr class="hrLine" style="width:500px;"/>修改学生信息<hr class="hrLine" style="width:500px;"/></span>
    </div>

    <div>
        <form id="myform" name="myform" action="***********">
            <table border="0" width="100%"  style="text-align: center;margin-left: 260px;">
                <tr>
                    <td>
                        <ul>
                            <li id="firtsts">
                                <h3>学生账号:</h3>
                                <p><input type="text" name="passwd"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="firtsts">
                                <h3>学生名称:</h3>
                                <p><input type="text" name="passwd"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li>
                                <h3>性别：</h3>
                                <p>
                                <div class="selectbox">
                                    <select>
                                        <option value="0">男</option>
                                        <option value="1">女</option>
                                    </select>
                                </div>
                                </p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="threes">
                                <h3>专业:</h3>
                                <p><input type="text" name="passwd"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="threes">
                                <h3>籍贯:</h3>
                                <p><input type="text" name="passwd"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="threes">
                                <h3>电话:</h3>
                                <p><input type="text" name="passwd" /></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="threes">
                                <h3>邮箱:</h3>
                                <p><input type="text" name="passwd"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="threes">
                                <h3>学院:</h3>
                                <p><input type="text" name="passwd"/></p>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            <li id="lasts">
                                <h3>在校指导教师:</h3>
                                <p><input type="text" name="passwd" /></p>
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
        </form>

    </div>
</div>
</body>
</html>