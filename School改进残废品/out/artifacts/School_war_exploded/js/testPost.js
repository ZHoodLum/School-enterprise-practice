function checkUserName(){
    alert(sno);
    var username = document.getElementById("sno").value;
    //传统的ajax校验
    //1.创建异步交互对象，
    var xhr = createXmlHttp();
    //alert(xhr);
    //2设置监听
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4){
            if(xhr.status == 200){
                document.getElementById("span1").innerHTML = xhr.responseText;
            }
        }
    }

    //3打开连接
    xhr.open("post","${pageContext.request.contextPath}/ResumeAction.action?time="+new Date().getTime+"&username="+username,true);
    //4发送
    xhr.send(null);
}

//创建XmlHttp对象
function createXmlHttp(){
    var xmlHttp;
    try{
        xmlHttp= new XMLHttpRequest();
    }catch(e){
        try{
            xmlHttp=new ActiveXObject("Msxm12.XMLHTTP");
        }catch(e){
            try{
                xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
            }catch(e){}
        }
    }

    return xmlHttp;
}