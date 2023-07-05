<%--
  Created by IntelliJ IDEA.
  User: 小鱼仔和氧气
  Date: 2023/6/11
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="./css/animate.min.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style>

        h1 {
            text-align: center;
            color: #333;
        }

        .grzx {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 100px auto;
            max-width: 800px;
            background-color: #fff;
            padding: 100px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        .profile-image {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 20px;
        }

        .profile-info {
            flex: 1;
            min-width: 300px;
        }

        .profile-info h2 {
            margin-top: 0;
            color: #333;
        }

        .profile-info p {
            margin: 5px 0;
            color: #666;
        }

        .btn {
            display: inline-block;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #555;
        }

        .item {
            flex-basis: 20px;
            margin-bottom: 20px;
            position: relative;
            display: inline-block;
        }

        .item img {
            width: 80px;
            height: 80px;
        }

        .item:hover .delete-button {
            display: block;
            border-radius: 20px;
            opacity: 1;
        }

        .delete-button {
            display: none;
            position: absolute;
            top: 25px;
            right: 15px;
            background-color: rgb(219, 204, 204);
            color: white;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
        }

        .file-upload {
            position: relative;
        }

        .file-upload input[type=file] {
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        .profile-info input {
            border-radius: 20px;
            border-color: black;
        }
    </style>
</head>
<body>
<!-- 导航条 -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>


            <a class="navbar-brand" href="#"></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/user/toindex">MoreBuy</a></li>
                <li class="dropdown">

                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search"
                           style="opacity: 0.5;border-radius: 25pc;">
                </div>
                <button type="submit" class="btn btn-default" style="opacity: 0.5;border-radius: 25pc;"><i
                        class="glyphicon glyphicon-search" aria-hidden="true"></i>搜素
                </button>

            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/user/tologin">登录</a></li>
                <li><a href="${pageContext.request.contextPath}/book/allBook">我的购物车</a></li>
                <li><a href="#footer">联系我们</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">个人信息 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/user/topersonalCenter">个人中心</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/loginOut">退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 编辑信息-->
<div class="grzx container wow animate__fadeInDown">
    <div class="file-upload" align="center">
        <img src="../images/${user.photo}" alt="Profile Image" class="profile-image">
    </div>
    <div class="profile-info">
        <main>
            <form action="${pageContext.request.contextPath}/user/updateUser" method="post">

                <br><br>
                <label for="name">昵称：</label>
                <input type="text" id="name" name="name" value="${user.name}"><br><br>


                <label for="email">邮箱：</label>
                <input type="email" id="email" name="mail" value="${user.mail}"><br><br>

                <label for="phone">电话：</label>
                <input type="tel" id="phone" name="tel" value="${user.tel}"><br><br>

                <label for="phone">密码：</label>
                <input type="tel" id="sex" name="password" value="${user.password}"><br><br>

                <label for="address">地址：</label>
                <textarea id="address" name="address" value="${user.address}"></textarea><br><br>

                <label for="address">更换头像：</label>
                <input type="file" class="form_input" placeholder="Photo" name="photo"><br><br>


                <input type="submit" class="form_button button" value="确定"></imput>
            </form>
        </main>

    </div>
</div>


<!-- fotter -->
<div id="footer" class="wow fadeInDown">
    <nav aria-label="Page navigation" style="text-align: center;">
        <ul class="pagination">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>

    <p class="info" style="text-align: center;">
        <strong>友情链接:</strong>
        <a href="https://www.taobao.com/">淘宝</a>　|　
        <a href="https://www.jd.com/">京东</a>　|　
        <a href="https://www.vip.com/index.php">唯品会</a>　|　
        <a href="#">信息反馈</a>
    </p>
    <div class="footer_links" style="text-align: center;">
        <strong>通讯方式</strong>
        <p>
                <span>地址：四川省成都市东部新区成简大道二段123号　　邮编：641423　　电话：400-630-2020
                </span>
        </p>
    </div>
    </p>
</div>


<!-- 引入 -->
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script>
    new WOW().init();
</script>

</body>
</html>
