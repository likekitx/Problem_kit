<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="referrer" content="no-referrer">
    <title>Register</title>
    <link href="${pageContext.request.contextPath}/static/css/layui.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/in.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet"/>
</head>
<body>
<div class="outer">
    <input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
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
                <p>账号注册</p>
                <div class="layui-form-item">
                    <i class="layui-icon layui-icon-username"></i>
                    <label class="layui-form-label">学号:</label>
                    <div class="layui-input-block">
                        <input type="text" name="account" required  lay-verify="required|account" placeholder="学号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <i class="layui-icon layui-icon-at"></i>
                    <label class="layui-form-label">姓名:</label>
                    <div class="layui-input-block">
                        <input type="text" name="name" lay-verify="name|required" placeholder="2~5个汉字" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <i class="layui-icon layui-icon-password"></i>
                    <label class="layui-form-label">密码:</label>
                    <div class="layui-input-block">
                        <input type="password" name="password" required  lay-verify="required|password" placeholder="字母、数字、下划线、小数点" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <i class="layui-icon layui-icon-cellphone"></i>
                    <label class="layui-form-label">电话:</label>
                    <div class="layui-input-block">
                        <input type="tel" name="phone" placeholder="电话号码" lay-verify="required|phone" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-submit">
                    <button type="button" lay-submit class="layui-btn">注册</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script charset="UTF-8" src="${pageContext.request.contextPath}/static/layui.js" type="text/javascript"></script>
<script charset="UTF-8" src="${pageContext.request.contextPath}/js/register.js" type="text/javascript"></script>
</html>
