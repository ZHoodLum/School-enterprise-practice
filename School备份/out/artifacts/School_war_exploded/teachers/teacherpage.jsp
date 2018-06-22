<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>studentscore</title>
    <link rel="stylesheet" type="text/css" href="../css/teacherpage.css">
    <style type="text/css">
        .inner{
            width:200px;
            height: 100%;
            position: absolute;
            top: 15px;
            left: 13px;
            /*cursor: pointer;*/
            overflow:hidden;
        }
        .innerbox{
            overflow-x: hidden;
            overflow-y: auto;
            color: #000;
            font-size: .7rem;
            font-family: "\5FAE\8F6F\96C5\9ED1",Helvetica,"黑体",Arial,Tahoma;
            height: 100%;
        }
        /*滚动条样式*/
        .innerbox::-webkit-scrollbar {/*滚动条整体样式*/
        width: 1px;     /*高宽分别对应横竖滚动条的尺寸*/
        height: 5px;
        }
        .innerbox::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
        border-radius: 5px;
        -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
        background: rgba(0,0,0,0.2);
        }
        .innerbox::-webkit-scrollbar-track {/*滚动条里面轨道*/
        -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
        border-radius: 0;
        background: rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<div class="inner">
    <div class="innerbox">
        <div class="top">
        <table>
            <tr style="text-align: center">
                <td style="padding-bottom:5px;border-bottom: 2px dashed #6bb642;">班级</td>
            </tr>
            <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                <td><a href="getAllStudentForOtherClassPage?cid=153011&page=1" target="right">计算机科学与技术</a></td>
            </tr>
            <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                <td><a href="getAllStudentForOtherClassPage?cid=153012&page=1" target="right">软件工程</a></td>
            </tr>
            <tr>
                <td><a href="getAllStudentForOtherClassPage?cid=153013&page=1" target="right">物联网</a></td>
            </tr>
        </table>
        </div>
    </div>
</div>
</body>
</html>