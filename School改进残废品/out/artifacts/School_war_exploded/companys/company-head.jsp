<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>mangerhead</title>
    <style type="text/css">
        body{
            background-color: #b7b7b7;
            color: white;
        }
        #login{margin:5px 0 10px 0;}
        #title{font-size: 30px;margin:0 auto;float:left;margin-left:50px;transition: 2s;font-family:华文行楷}
        #title1{
            position:absolute;
            top:21px;
            left:1140px;
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
            left:1100px;
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
    <div id="titles">
        <div id="login">
            <span id="title"><a href="" style="text-decoration: none;color:black;" target="_top">School enterprise cooperation</a></span>
            <s:a href="update-teacher-information.jsp" style="text-decoration: none;color:black;" target="right">
                <img src="../images/loginusers.png"  id="circle">
                <span id="title1">
                    <s:iterator value="#session.teacher" var="teacher">
                        <s:property value="#teacher.tname"/>
                    </s:iterator>
                </span>
            </s:a>
            <s:a href="everyOneLogout.action">注销</s:a>
        </div>
    </div>
</body>
</html>