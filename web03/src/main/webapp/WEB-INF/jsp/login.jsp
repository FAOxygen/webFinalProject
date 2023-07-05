<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>登陆注册</title>
    <!-- 导入字体图标 -->
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /* 字体无法选中 */
            user-select: none;
        }

        body {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 12px;
            background-color: #ecf0f3;
            color: #a0a5a8;
        }

        .shell {
            position: relative;
            width: 1000px;
            min-width: 1000px;
            min-height: 600px;
            height: 600px;
            padding: 25px;
            background-color: #ecf0f3;
            box-shadow: 10px 10px 10px #d1d9e6, -10px -10px 10px #f9f9f9;
            border-radius: 12px;
            overflow: hidden;
        }

        /* 设置响应式 */
        @media (max-width: 1200px) {
            .shell {
                transform: scale(0.7);
            }
        }

        @media (max-width: 1000px) {
            .shell {
                transform: scale(0.6);
            }
        }

        @media (max-width: 800px) {
            .shell {
                transform: scale(0.5);
            }
        }

        @media (max-width: 600px) {
            .shell {
                transform: scale(0.4);
            }
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            width: 600px;
            height: 100%;
            padding: 25px;
            background-color: #ecf0f3;
            transition: 1.25s;
        }

        .form {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
        }

        .glyphicon {
            margin: 0 5px;
            border: rgba(0, 0, 0, 0.5) 2px solid;
            border-radius: 50%;
            font-size: 25px;
            padding: 3px;
            opacity: 0.5;
            transition: 0.1s;
        }

        .iconfont:hover {
            opacity: 1;
            transition: 0.15s;
            cursor: pointer;
        }

        .form_input {
            width: 350px;
            height: 40px;
            margin: 4px 0;
            padding-left: 25px;
            font-size: 13px;
            letter-spacing: 0.15px;
            border: none;
            outline: none;
            background-color: #ecf0f3;
            transition: 0.25s ease;
            border-radius: 8px;
            box-shadow: inset 2px 2px 4px #d1d9e6, inset -2px -2px 4px #f9f9f9;
        }

        .form_input:focus {
            box-shadow: inset 4px 4px 4px #d1d9e6, inset -4px -4px 4px #f9f9f9;
        }

        .form_span {
            margin-top: 30px;
            margin-bottom: 12px;
        }

        .form_link {
            color: #181818;
            font-size: 15px;
            margin-top: 25px;
            border-bottom: 1px solid #a0a5a8;
            line-height: 2;
        }

        .title {
            font-size: 34px;
            font-weight: 700;
            line-height: 3;
            color: #181818;
            letter-spacing: 10px;
        }

        .description {
            font-size: 14px;
            letter-spacing: 0.25px;
            text-align: center;
            line-height: 1.6;
        }

        .button {
            width: 180px;
            height: 50px;
            border-radius: 25px;
            margin-top: 50px;
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1.15px;
            background-color: #4B70E2;
            color: #f9f9f9;
            box-shadow: 8px 8px 16px #d1d9e6, -8px -8px 16px #f9f9f9;
            border: none;
            outline: none;
        }

        .a-container {
            z-index: 100;
            left: calc(100% - 600px);
        }

        .b-container {
            left: calc(100% - 600px);
            z-index: 0;
        }

        .switch {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 400px;
            padding: 50px;
            z-index: 200;
            transition: 1.25s;
            background-color: #ecf0f3;
            overflow: hidden;
            box-shadow: 4px 4px 10px #d1d9e6, -4px -4px 10px #d1d9e6;
        }

        .switch_circle {
            position: absolute;
            width: 500px;
            height: 500px;
            border-radius: 50%;
            background-color: #ecf0f3;
            box-shadow: inset 8px 8px 12px #b8bec7, inset -8px -8px 12px #fff;
            bottom: -60%;
            left: -60%;
            transition: 1.25s;
        }

        .switch_circle-t {
            top: -30%;
            left: 60%;
            width: 300px;
            height: 300px;
        }

        .switch_container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            position: absolute;
            width: 400px;
            padding: 50px 55px;
            transition: 1.25s;
        }

        .switch_button {
            cursor: pointer;
        }

        .switch_button:hover,
        .submit:hover {
            box-shadow: 6px 6px 10px #d1d9e6, -6px -6px 10px #f9f9f9;
            transform: scale(0.985);
            transition: 0.25s;
        }

        .switch_button:active,
        .switch_button:focus {
            box-shadow: 2px 2px 6px #d1d9e6, -2px -2px 6px #f9f9f9;
            transform: scale(0.97);
            transition: 0.25s;
        }

        .is-txr {
            left: calc(100% - 400px);
            transition: 1.25s;
            transform-origin: left;
        }

        .is-txl {
            left: 0;
            transition: 1.25s;
            transform-origin: right;
        }

        .is-z {
            z-index: 200;
            transition: 1.25s;
        }

        .is-hidden {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            transition: 1.25s;
        }

        .is-gx {
            animation: is-gx 1.25s;
        }

        @keyframes is-gx {

            0%,
            10%,
            100% {
                width: 400px;
            }

            30%,
            50% {
                width: 500px;
            }
        }
    </style>
</head>
<body>
<div class="shell">
    <div class="container a-container" id="a-container">
        <form action="${pageContext.request.contextPath}/user/addUser" method="post" class="form" id="a-form">
            <h2 class="form_title title">创建账号</h2>
            <div class="form_icons">
                <i class="glyphicon glyphicon-paperclip
                    "></i>
                <i class="glyphicon glyphicon-lock"></i>
                <i class="glyphicon glyphicon-yen"></i>
            </div>
            <span class="form_span">选择注册方式电子邮箱注册</span>
            <input type="text" class="form_input" placeholder="Name" name="name">
            <input type="text" class="form_input" placeholder="Email" name="mail">
            <input type="text" class="form_input" placeholder="Password" name="password">
            <input type="file" class="form_input" placeholder="Photo" name="photo">
            <input type="submit" class="form_button button" value="注册"></input>
        </form>
    </div>

    <div class="container b-container" id="b-container">
        <form action="${pageContext.request.contextPath}/user/login" method="post" class="form" id="b-form">
            <h2 class="form_title title">登入账号</h2>
            <div class="form_icons">
                <i class="glyphicon glyphicon-paperclip
                    "></i>
                <i class="glyphicon glyphicon-lock"></i>
                <i class="glyphicon glyphicon-yen"></i>
            </div>
            <span class="form_span">选择登录方式用户名登录</span>
            <input type="text" class="form_input" placeholder="Name" name="name">
            <input type="text" class="form_input" placeholder="Password" name="password">
            <a class="form_link">忘记密码？</a>
            <input type="submit" class="form_button button"  value="登录"></imput>
        </form>
    </div>

    <div class="switch" id="switch-cnt">
        <div class="switch_circle"></div>
        <div class="switch_circle switch_circle-t"></div>
        <div class="switch_container" id="switch-c1">
            <div>${msg}</div>
            <h2 class="switch_title title" style="letter-spacing: 0;">Welcome MoreBuy！</h2>
            <p class="switch_description description">已经有账号了嘛，去登入账号来进入奇妙世界吧！！！</p>
            <button class="switch_button button switch-btn">登录</button>
        </div>

        <div class="switch_container is-hidden" id="switch-c2">
            <h2 class="switch_title title" style="letter-spacing: 0;">Hello Friend！</h2>
            <p class="switch_description description">去注册一个账号，成为尊贵的客户，让我们踏入奇妙的旅途！</p>
            <button class="switch_button button switch-btn">注册</button>
        </div>
    </div>
</div>
</body>

</html>
<script>
    <%--function myFunction(){--%>
    <%--    alert(${msg});--%>
    <%--}--%>
    let switchCtn = document.querySelector("#switch-cnt");
    let switchC1 = document.querySelector("#switch-c1");
    let switchC2 = document.querySelector("#switch-c2");
    let switchCircle = document.querySelectorAll(".switch_circle");
    let switchBtn = document.querySelectorAll(".switch-btn");
    let aContainer = document.querySelector("#a-container");
    let bContainer = document.querySelector("#b-container");
    let allButtons = document.querySelectorAll(".submit");

    let getButtons = (e) => e.preventDefault()
    let changeForm = (e) => {
        // 修改类名
        switchCtn.classList.add("is-gx");
        setTimeout(function () {
            switchCtn.classList.remove("is-gx");
        }, 1500)
        switchCtn.classList.toggle("is-txr");
        switchCircle[0].classList.toggle("is-txr");
        switchCircle[1].classList.toggle("is-txr");

        switchC1.classList.toggle("is-hidden");
        switchC2.classList.toggle("is-hidden");
        aContainer.classList.toggle("is-txl");
        bContainer.classList.toggle("is-txl");
        bContainer.classList.toggle("is-z");
    }
    // 点击切换
    let shell = (e) => {
        for (var i = 0; i < allButtons.length; i++)
            allButtons[i].addEventListener("click", getButtons);
        for (var i = 0; i < switchBtn.length; i++)
            switchBtn[i].addEventListener("click", changeForm)
    }
    window.addEventListener("load", shell);

</script>
</body>

</html>
