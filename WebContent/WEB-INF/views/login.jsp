<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <title>登录页面</title>
    <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="resource/css/a3common.css" rel="stylesheet">
    <link rel="stylesheet" href="resource/css/login.css">
    <link rel="stylesheet" href="resource/css/font_43459_lbtux0zjkr6yldi.css">
    <style>
        /* 新增布局样式 */
        .formDiv {
            width: 390px; /* 保持放大后的宽度 */
            margin: 50px auto; /* 恢复原始居中方式 */
            position: relative; /* 添加相对定位 */
            padding: 25px; /* 恢复原始内边距 */
            background: #ffffff;
            border: none; /* 恢复原始边框 */
            border-radius: 10px; /* 恢复原始圆角 */
            box-shadow: none; /* 移除阴影 */
        }

        /* 标题优化 */
        h2.text-center {
            font-size: 35px; /* 原30px→32px */
            margin-bottom: 40px;
            color: #1a1a1a;
            letter-spacing: 5px; /* 增加字间距 */
            font-weight: 600;
        }

        /* 放大输入框 */
        .input-warp {
            margin-bottom: 35px;
        }

        .inputs {
            height: 50px;
            padding: 0 18px;
            font-size: 18px;
        }

        /* 放大按钮 */
        .lgbtn {
            height: 50px;
            font-size: 21px;
            border-radius: 8px;
        }

        /* 角色标签文字 */
        .gap .input-icon {
            font-size: 18px;      /* 原文字放大（默认约14px） */
            font-weight: bold;    /* 可选加粗 */
            margin-right: 10px;   /* 与下拉框间距 */
        }

        /* 下拉框选中文字 */
        .gap .select {
            font-size: 18px;      /* 下拉框文字大小 */
            padding: 8px 12px;    /* 增加内边距 */
        }

        /* 下拉选项文字（注意浏览器兼容性） */
        .gap .select option {
            font-size: 18px;      /* 选项文字大小 */
            padding: 8px;         /* 选项内边距 */
        }

        .gap.role-select .select {
            border: none;
            border-bottom: 2px solid #ddd; /* 底部线条 */
            border-radius: 0;
            padding: 8px 30px 8px 0;
            background-color: #4195cf;
            transition: border-color 0.3s;
        }

        .gap.role-select .select:focus {
            border-bottom-color: #64fdeb; /* 聚焦时底部高亮 */
            box-shadow: none;
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

        .student-footer span strong {
            color: #4a8cff;
            margin: 0 8px;
        }



        /* 直接定位链接类名 */
        a.link {
            font-size: 18px;       /* 原始默认约14px，调整为18px */
            font-weight: 500;      /* 可选：加粗 */
            display: inline-block; /* 可选：方便调整间距 */
            margin-top: 8px;       /* 可选：与其他元素保持间距 */
        }
    </style>
</head>


<div id="main" class="main-warp">
    <div class="main-content">
        <div class="formDiv">

            <h2 class="text-center">登录新闻网站 抓住每一个精彩</h2>

            <form id="loginForm" action="LoginServlet?action=login" method="post">
                <div class="dataform">
                    <div class="input-warp gap">
                        <span class="input-icon iconfont icon-yonghu1"></span>
                        <input id="userName" name="userName" type="text" class="inputs" placeholder="手机号码或登录账号"
                               maxlength="64">
                    </div>

                    <span id="userNameErr" style="color:red">${msg}</span>


                    <div class="input-warp gap">
                        <span class="input-icon iconfont icon-baomi"></span>
                        <input class="inputs" type="password" name="password" placeholder="密码" id="password"
                               maxlength="20">
                    </div>



                    <div class=" gap">
                        <span class="input-icon ">角色</span>
                        <select name="type" class="select">
                            <option value="1">管理员</option>
                            <option value="2">用户</option>
                            <option value="3">编辑者</option>
                        </select>

                    </div>


                    <div class="student-footer">
                        <span>学号：<strong>220162401006</strong> 姓名：<strong>冯娈贻</strong></span>
                    </div>

                    <div class="btn-warp gap">
                        <div class="text-center">

                            <button type="submit" id="btnLogin" class="btn btn-block lgbtn blue">登录</button>
                        </div>
                    </div>
                    <div class="gap">

                        <div class="pull-right" style="margin-top: 6px">
                            |<a href="LoginServlet?action=toRegister" class="link">新用户注册</a></div>

                        <div class="pretty-box">

                        </div>
                    </div>


                    <!--   <div class="biggap third-party-title">
                          <h5 class="text-center"><span>第三方账号登录</span></h5>
                      </div>
                      <div class="third-auth">

                          <a title="用钉钉登录" class="dt" href="javascript:;"></a>
                          <a title="用微信账户登录" class="wx" href="javascript:;"></a>
                          <a title="用QQ账户登录" class="qq" href="javascript:;"></a>

                      </div> -->

                </div>
            </form>

        </div>
    </div>
</div>

<style>
    .copyrights {
        text-indent: -9999px;
        height: 0;
        line-height: 0;
        font-size: 0;
        overflow: hidden;
    }
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/" title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/" title="查字典">查字典</a>
</div>

<script type="text/javascript" src="resource/component/layui/layui.js" charset=utf-8></script>
<script type="text/javascript" src="resource/component/pear/pear.js" charset=utf-8></script>
<script>
    layui.use(['layer', 'form', 'jquery'], function () {
        var form = layui.form,
            layer = layui.layer,
            $ = layui.jquery;
        form.render();//这句一定要加，占坑

        $("#btnLogin").on("click", function () {
            var userName = $("#userName").val().trim(); // trim()去除空格
            var password = $("#password").val().trim();
            var type = $("#type").val();


            if (userName == "") {
                layer.msg('登录账号或者手机号不能为空！');
                return false;
            }
            if (password == "") {
                layer.msg('密码不能为空！');
                return false;
            }
            if (type == "") {
                layer.msg('请选择角色！');
                return false;
            }

        });

        setTimeout(function () {
            $("#userNameErr").html("")
        }, 3000);
    })
    ;
</script>
</body>
</html>
