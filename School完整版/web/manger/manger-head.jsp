<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>mangerhead</title>
    <style type="text/css">
        #login{margin:5px 0 10px 0;}
        #title{font-size: 30px;margin:0 auto;float:left;margin-left:50px;transition: 2s;font-family:华文行楷}
        #title1{
            position:absolute;
            top:21px;
            left:1340px;
            font-size: 14px;
        }
        a{
            color: black;
            text-decoration: none;
        }
        #title:hover{cursor: pointer;/*光标点击 宽度向右移动50*/transform: translateX(50px);}
        #title1 a:visited {color:black;}
        #title1 a:hover {color:blue; text-decoration: none;}
        #circle {
            position:absolute;
            top:12px;
            left:1300px;
            width: 30px;
            height: 30px;
            border: 2px white solid;
            -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            border-radius:15px;
        }
    </style>
</head>
<body>
    <div id="login">
        <span id="title"><a href="../main.html" style="text-decoration: none;color:black;" target="_top">School enterprise cooperation</a></span>
        <span id="title1"><a href="update-manger-information.jsp" style="text-decoration: none;color:black;" target="right">欢迎您，管理员</a></span>
    </div>
</body>
</html>