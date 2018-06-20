<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
    <link rel="stylesheet" type="text/css" href="../css/applicationaudit.css">
    <style type="text/css">
        .inner{
            width:100%;
            height: 100%;
            position: absolute;
            top: 33px;
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
        <div id="recruitinformation">
            <form id="myform" name="myform" action="*****">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr align="center">
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">学号</td>
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">姓名</td>
                        <td width="10%"  style="padding:10px; border-bottom: 2px dashed #6bb642;">操作</td>
                    </tr>
                    <s:iterator var="student" value="#request.pageBean.List">
                    <tr align="center" style="padding:10px; border-bottom: 2px dashed #6bb642;">
                        <td style="padding:15px;"><s:property value="#student.sno"/> </td>
                        <td style="padding:15px;"><s:property value="#student.sname"/> </td>
                        <td style="padding:15px;"><s:a href="addStudentForTeacher.action?sno=%{#student.sno}">加入该学生</s:a></td>
                    </tr>
                    </s:iterator>
                </table>
                第  <s:property value="#request.pageBean.page"/>/<s:property value="#request.pageBean.totalPage"/>页
                <s:iterator var="i" begin="1" end="#request.pageBean.totalPage" step="1">
                    <s:if test="#request.pageBean.page==#i">
                        <span class="currentPage"><s:property value="#i"/></span>
                    </s:if>
                    <s:else>
                        <a href="getAllStudentForOtherClassPage.action?cid=${cid}&page=<s:property value="#i"/>"><s:property value="#i"/></a>
                    </s:else>
                </s:iterator>
            </form>
        </div>



    </div>
</div>
</body>
</html>