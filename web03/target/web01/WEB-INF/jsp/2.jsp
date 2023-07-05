<%--
  Created by IntelliJ IDEA.
  User: 小鱼仔和氧气
  Date: 2023/6/11
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <!-- 引入 -->
    <script language="javascript" src="./js/province.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
    </script>
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="../css/animate.min.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <style>
        body {
            background-color: black;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .xqy {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 80px auto;
            max-width: 1000px;
            background-color: #fff;
            opacity: 0.8;
            padding: 100px;

        }

        .profile-image {
            width: 300px;
            height: 250px;
            object-fit: cover;
            margin-top: 20px;
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

        #honor_lunbo {
            margin: 100px auto;
            margin-top: 100px;
            width: 90%;
            height: 300px;
            overflow: hidden;
            white-space: nowrap;
        }

        #lunbo_begin img {
            width: 200px;
            margin-right: 1%;
        }

        #lunbo_begin,
        #lunbo_end {
            display: inline;
        }
    </style>
</head>
<body onload='getProvince()'>
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
                        class="glyphicon glyphicon-search" aria-hidden="true"></i>搜索
                </button>

            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/user/tologin">登录</a></li>
                <li><a href="#">我的购物车</a></li>
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
<div class="wow fadeInUp">
    <img src="../images/69.png" class="img-responsive center-block container">
    <div class="xqy wow animate__lightSpeedInRight">
        <img src="../images/67.png" alt="Profile Image" class="profile-image">
        <div class="profile-info">
            <h2>iPad Pro 2023</h2>
            <hr>
            <p>
                <i
                        class="glyphicon glyphicon glyphicon-jpy" aria-hidden="true"></i>
                价格：6799
            </p>
            <hr>
            <p>
                震撼性能、超先进显示屏、疾速无线网络连接、Apple Pencil 高维玩法、种种 iPadOS 16 强大新功能，终极 iPad
                体验，在此合体。
            </p>
            <hr>
            <p>
                极致动态范围，看 12.9 英寸 iPad Pro 的4。 Liquid 视网膜 XDR 显示屏的对比度高达
                1000000:1，能呈现出栩栩如生的画面细节，无论是欣赏、编辑 HDR 照片和视频，还是看电影、追剧，效果都非常震撼。它的亮度表现也非常抢眼：全屏亮度
                1000 尼特，峰值亮度高达 1600 尼特。此外，像 P3 广色域、原彩显示和 ProMotion
                自适应刷新率这些先进的显示技术，也一样不少。而对色彩精准度要求更高的那类工作项目，它还备有参考模式。
            </p>
            <hr>
            <p>
                数量:
                <input type="number" min="1" step="1" value="1" style="border-radius: 25pc;">
            </p>
            <hr>
            <p>
                <!-- Split button -->
            <div class="btn-group">
                <button type="submit" class="btn ">
                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true">加入购物车</i></button>
                <span class="sr-only">Toggle Dropdown</span>
                </button>
            </div>
            <div class="btn-group">
                <button type="button" class="btn ">
                    立即购买
                </button>
                <span class="sr-only">Toggle Dropdown</span>
                </button>
            </div>
            </p>
        </div>
    </div>
    <img src="../images/70.png" class="img-responsive center-block container wow animate__fadeInBottomLeft">

    <!-- fotter -->
    <div style="height: 100px;"></div>
    <div id="footer" class="wow fadeInDown">
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
</div>
</body>
</html>
