<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>studentinformation</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
</head>
<body>
<div class="checkout-title">
    <span><hr class="hrLine" style="width:300px;"/>学生的信息查询<hr class="hrLine" style="width:300px;"/></span>
</div>
<!--搜索框 <div class="search"></div>-->
<div class="sousuo">
    <input type="text" class="search" placeholder="请填写学号进行搜索"/>
    <input type="submit" value="搜索" class="sub"/>
</div>
<div id="recruitinformation">

    <table width="100%" border="0" cellpadding="0" cellspacing="0">

        <tr align="center">
            <td width="6%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学号</td>
            <td width="6%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">姓名</td>
            <td width="7%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">性别</td>
            <td width="13%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">专业</td>
            <td width="15%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">籍贯</td>
            <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">邮箱</td>
            <td width="8%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">电话</td>
            <td width="12%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学院</td>
            <td width="7%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">是否实习</td>
            <td width="8%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">指导教师</td>
        </tr>
        <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
            <td style="padding:10px;">153232</td>
            <td style="padding:10px;">TUJy</td>
            <td style="padding:10px;">男</td>
            <td style="padding:10px;">计科</td>
            <td style="padding:10px;">内蒙古通辽市</td>
            <td style="padding:10px;">15645964949@gmail.com</td>
            <td style="padding:10px;">1589847568</td>
            <td style="padding:10px;">信息与控制学院</td>
            <td style="padding:10px;">实习</td>
            <td style="padding:10px;">王岩</td>
        </tr>

    </table>
</div>
</body>
</html>