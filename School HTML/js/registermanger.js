function validate() {
    //管理员账号验证
    var uid = document.getElementById("uid").value;
    var exp = new RegExp(/^\d{0,10}$/);
    if (!exp.test(uid)) {
        alert("请重新输入教师账号，教师账号不符合要求！");
        document.getElementById("uid").focus();//光标定位
        return false;//防止向下进行
    }
    //管理员名称的校验
    var uname = document.getElementById("uname").value;
    var exp = new RegExp(/^(?!_)(?!.*?_$)([a-zA-Z\s.]|[\u4e00-\u9fa5\s.]){2,50}$/);
    if (!exp.test(uname)) {
        alert("请重新输入教师名称，教师名称不符合要求！");
        document.getElementById("uname").focus();//光标定位
        return false;//防止向下进行
    }
    //密码验证
    //登录密码验证（5位以上位数字）
    var upwd=document.getElementById("upwd").value;
    var exp = new RegExp(/^(?!_)(?!.*?_$)([0-9a-zA-Z\s.]){6,20}$/);
    //var exp=new RegExp(/^([123])$/);
    if(!exp.test(upwd)){
        alert("请重新输入密码，密码不符合要求");
        document.getElementById("upwd").focus(); //光标定位
        return false;
    }

    //重复密码验证
    var repwd=document.getElementById("repwd").value;
    if(repwd!=spwd){
        alert("重复密码与第一次输入密码不相同");
        document.getElementById("repwd").focus(); //光标定位
        return false;
    }

}