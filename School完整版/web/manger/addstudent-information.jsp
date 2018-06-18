<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>addcompany-information</title>
    <link rel="stylesheet" type="text/css" href="../css/manger-addinformation.css">
    <!--
    下拉框样式
    -->
    <style type="text/css">
        .selectbox{ float:left;width: 200px; display: inline-block; overflow-x: hidden; height: 28px; line-height: 28px; font-size: 0;  background:#fff url(images/arrow.png) right center no-repeat; border: 1px solid #dcdbdb; vertical-align: middle;}
        .selectbox select{cursor: pointer; padding: 0 8px; height: 28px; line-height: 28px; font-size: 12px; width:118%; padding-right: 18%; background:none; border: none;}
        .selectbox select option{ padding:5px;}
    </style>
</head>
<body>
    <div class="container">

        <div class="checkout-title">
            <span><hr class="hrLine" style="width:500px;"/>添加学生信息<hr class="hrLine" style="width:500px;"/></span>
        </div>

        <div>
            <form id="myform" name="myform" action="***********">
                <table border="0" width="100%"  style="text-align: center;margin-left: 260px;">
                    <tr>
                        <td>
                            <ul>
                                <li id="firtsts">
                                    <h3>学生学号:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写学生学号，即账号！例如：153200335"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
                                    <h3>学生姓名:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写学生姓名！例如：张三"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
                                    <h3>登陆密码:</h3>
                                    <p><input type="text" name="passwd" placeholder="请设置此账号的登陆密码！例如：zgasgh552"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
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
                                    <p><input type="text" name="passwd" placeholder="请填写公司地址！例如：计科"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
                                    <h3>所在学院:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写公司地址！例如：信息与控制学院"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
                                    <h3>籍贯:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写公司地址！例如：辽宁省沈阳市，精确到市即可"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
                                    <h3>电话:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写公司电话！例如：15865478965"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="threes">
                                    <h3>邮箱:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写邮箱！例如：z1556535@gmail.com"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li id="lasts">
                                    <h3>在校指导教师:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写管理此账号的人员！例如：王丽"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a href="javascript:;" class="btn" style="float: left;margin-left: 150px;">提交学生信息</a>
                            <input type="reset" name="button" class="btn" value="重置学生信息" style="float: left;margin-left: 100px;">
                        </td>
                    </tr>

                </table>
            </form>

        </div>
    </div>
</body>
</html>