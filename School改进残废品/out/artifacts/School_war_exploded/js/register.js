function check()
    {
        if (document.form1.password.value!=document.form1.passwords.value){
            alert("对不起!重复密码不等于登录密码");
            return false;
        }
        return true;
    }