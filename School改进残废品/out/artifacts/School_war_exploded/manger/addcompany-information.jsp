<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>addcompany-information</title>
    <link rel="stylesheet" type="text/css" href="../css/manger-addinformation.css">
</head>
<body>
    <div class="container">

        <div class="checkout-title">
            <span><hr class="hrLine" style="width:500px;"/>添加企业信息<hr class="hrLine" style="width:500px;"/></span>
        </div>

        <div>
            <form id="myform" name="myform" action="***********">
                <table border="0" width="100%"  style="text-align: center;margin-left: 260px;">
                    <tr>
                        <td>
                            <ul>
                                <li id="firtsts">
                                    <h3>企业名称:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写企业名称！例如：大连东软有限公司"/></p>
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
                                    <h3>地址:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写公司地址！例如：辽宁省沈阳市太原街阳光大道A座"/></p>
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
                                    <h3>账号管理者:</h3>
                                    <p><input type="text" name="passwd" placeholder="请填写管理此账号的人员！例如：王丽"/></p>
                                </li>
                            </ul>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a href="javascript:;" class="btn" style="float: left;margin-left: 150px;">提交企业信息</a>
                            <input type="reset" name="button" class="btn" value="重置企业信息" style="float: left;margin-left: 100px;">
                        </td>
                    </tr>

                </table>
            </form>

        </div>
    </div>
</body>
</html>