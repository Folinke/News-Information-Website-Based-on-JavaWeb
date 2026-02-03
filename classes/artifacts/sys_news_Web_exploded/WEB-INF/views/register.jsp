<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>    
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<title>注册页面</title>
    <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="resource/css/a3common.css" rel="stylesheet">
    <link rel="stylesheet" href="resource/css/login.css">
    <link rel="stylesheet" href="resource/css/font_43459_lbtux0zjkr6yldi.css">
</head>



    <div id="main" class="main-warp">
        <div class="main-content">
            <div class="formDiv">
                
                    <h2 class="text-center">注册</h2>
                
                
                <form id="loginForm" action="UserServlet?action=addUser"  method="post" class="layui-form" enctype="multipart/form-data">
                    <div class="dataform" >
                        <div class="input-warp gap">
                            <span class="input-icon iconfont icon-yonghu1"></span>
                            <input id="message" name="stno" type="text" class="inputs" placeholder="账号（学号）/手机号" maxlength="64">
                        </div>
                       
                            <span id="userNameErr" style="color:red" >${msg}</span>
                       

                        <div class="input-warp gap">
                            <span class="input-icon iconfont icon-baomi"></span>
                            <input class="inputs" type="text" name="pwd" placeholder="密码" id="pwd" maxlength="20">
                        </div>
                        
                        <div class="input-warp gap">
                            <span class="input-icon iconfont icon-yonghu1"></span>
                            <input class="inputs" type="text" name="name" placeholder="用户名" id="name" maxlength="20">
                        </div>
                        
                        
                        <div class="input-warp gap">
                            <span class="input-icon iconfont icon-yonghu1"></span>
                            <input class="inputs" type="text" name="email" placeholder="邮箱" id="email" maxlength="20">
                        </div>
                        
                        
                       
                                <input type="file" name="imgUrl" id="imgUrl" class="layui-input"  /> 

				       
				      
				        <div class="input-warp gap">
                              <img src="" id="preview_img" width="100px" height="100px" alt="">

				       </div>    
                       
                       
                      

                        <div class="btn-warp gap">
                            <div class="text-center">                               

                                <button type="submit" id="btnLogin" class="btn btn-block lgbtn blue">注册</button>
                            </div>
                        </div>
                        <div class="gap">
                            
                                <div class="pull-right" style="margin-top: 6px">
                            |<a href="LoginServlet?action=loginOut" class="link">返回登录</a></div> 
                            
                            <div class="pretty-box">
                              
                            </div>
                        </div>
                        <div class="student-footer">
                            <span>学号：<strong>220162401006</strong> 姓名：<strong>冯娈贻</strong></span>
                        </div>
                        
                        
                    </div>
                </form>

            </div>
        </div>
    </div>

<style>
.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
/* 主容器垂直水平居中 */
.main-warp {
    display: flex;          /* 启用弹性布局 */
    justify-content: center; /* 水平居中 */
    align-items: center;     /* 垂直居中 */
    min-height: 100vh;      /* 至少占满整个视口高度 */
}

/* 表单容器放大并优化 */
.main-content {
    width: 600px;           /* 放大宽度（原 500px） */
    max-width: 90%;         /* 移动端最大宽度限制 */
    padding: 40px 60px;     /* 增大内边距（原 20px 50px） */
    margin: 20px auto;      /* 简化外边距 */
    border-radius: 10px;     /* 增大圆角（原 4px） */
    background: #fff;       /* 保持白色背景（若需透明需调整） */
    box-shadow: 0 4px 20px rgba(0,0,0,0.1); /* 增强阴影 */
}

/* 调整标题和输入框大小 */
.formDiv h2 {
    font-size: 39px;        /* 放大标题（原 20px） */
    padding: 25px 0 35px;   /* 调整标题间距 */
    font-weight: bold;      /* 加粗（或数值 700） */
}

.inputs {
    font-size: 18px;        /* 输入文字放大（原默认 14px） */
}

#btnLogin {
    height: 50px;
    border-radius: 8px;
    font-size: 21px;  /* 原始默认约 14px，调整为 18px */
}

/* 直接定位链接类名 */
a.link {
    font-size: 18px;       /* 原始默认约14px，调整为18px */
    font-weight: 500;      /* 可选：加粗 */
    display: inline-block; /* 可选：方便调整间距 */
    margin-top: 8px;       /* 可选：与其他元素保持间距 */
}

.student-footer {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    text-align: center;
    padding: 15px 0;
    background: rgba(255, 255, 255, 0.9);
    border-top: 1px solid #eee;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    z-index: 999;
}

.student-footer span {
    color: #666;
    font-size: 18px;
    letter-spacing: 1px;
}
</style>
<div class="copyrights" id="links20210126">
	Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
	<a href="https://www.chazidian.com/"  title="查字典">查字典</a>
</div>
<script src="layui/jquery-1.9.1.min.js"></script>

<script>


setTimeout(function(){ $("#userNameErr").html("")},3000);


$("#imgUrl").change(function () {
    //创建blob对象，浏览器将文件放入内存中，并生成标识
    var img_src = URL.createObjectURL($(this)[0].files[0]);
    //给img标检的src赋值
    document.getElementById("preview_img").src=img_src;
    //URL.revokeObjectURL(img_src);// 手动 回收，
});
</script>
</body>
</html>
