<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>login</title>
    <link href="${pageContext.request.contextPath}/static/css/layui.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/in.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet"/>
</head>
<body>
<div class="outer">
    <input id="PageContext" value="${pageContext.request.contextPath}" type="hidden">
    <header>
        <div class="headIcon">
            西安航空职业技术学院
        </div>
    </header>
    <div class="bodyDiv">
        <div class="bodyTop">
            智能创新协会主办
        </div>
        <div class="bodyRegister">
            <form action="" class="layui-form">
                <p>用户登陆</p>
                <div class="layui-form-item">
                    <i class="layui-icon layui-icon-username"></i>
                    <label class="layui-form-label">学号:</label>
                    <div class="layui-input-block">
                        <input type="text" name="account" required  lay-verify="required|account" placeholder="请输入学号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <i class="layui-icon layui-icon-password"></i>
                    <label class="layui-form-label">密码:</label>
                    <div class="layui-input-block">
                        <input type="password" name="password" required  lay-verify="required|password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-submit">
                    <button type="button" lay-submit class="layui-btn">登陆</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script charset="UTF-8" src="${pageContext.request.contextPath}/static/layui.js" type="text/javascript"></script>
<script charset="UTF-8" src="${pageContext.request.contextPath}/js/login.js" type="text/javascript"></script>
</html>