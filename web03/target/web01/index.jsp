<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <!-- 引入 -->
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
    </script>
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="./js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="./css/animate.min.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .carousel-inner img {
            display: flex;
            margin: 100px auto;
        }

        .zoomImage {
            width: 100%;
            height: 0;
            padding-bottom: 45%;
            overflow: hidden;
            background-position: center center;
            background-repeat: no-repeat;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            background-size: cover;
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
                        <li><a href="#">退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 轮播图 -->
<div id="carousel-example-generic" class="container carousel slide animate__heartBeat" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="zoomImage" style="background-image:url(./images/15.png)"></div>

        </div>
        <div class="item">
            <div class="zoomImage" style="background-image:url(./images/11.png)"></div>

        </div>
        <div class="item">
            <div class="zoomImage" style="background-image:url(./images/12.png)"></div>
        </div>
        <div class="item">
            <div class="zoomImage" style="background-image:url(./images/14.png)"></div>
        </div>
        <!-- <div class="item">
            <img src="images/banner/main1.jpg" alt="Third slide" style="width: 100%;height: 500px;">
        </div> -->
    </div>
    <!-- 轮播（Carousel）导航 -->

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- 商品 -->
<div class="container">
    <div class="page-header wow animate__zoomInLeft">
        <h1>Welcome to MoreBuy <small>supermarket</small></h1>
    </div>
    <div class="col-sm-6 col-md-3 wow animate__zoomIn">
        <div class="thumbnail">
            <img decoding="async" src="./images/50.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>Apple Watch Series 8</h3>
                <p>
                    铝金属表壳十分轻盈，采用 100% 再生的航空级铝金属制成。
                    运动型表带采用高性能 Fluoroelastomer 材料，并搭配创新的按扣加收拢式表扣
                    RMB 2999 起
                </p>
                <p>
                    <a id="zb" href="#" class="btn btn-primary" role="button"><i
                            class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a id="zb" href="${pageContext.request.contextPath}/user/to1" class="btn btn-primary" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 wow animate__lightSpeedInRight">
        <div class="thumbnail">
            <img decoding="async" src="./images/51.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>iPhone 14 Pro</h3>
                <p>6.7 或 6.1 英寸
                    超视网膜 XDR 显示屏2

                    ProMotion 自适应刷新率

                    全天候显示 灵动岛功能

                    和 iPhone 互动的新方式
                    RMB 7999 起
                </p>
                <p>
                    <a href="#" class="btn btn-default" role="button">
                        <i
                                class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a href="${pageContext.request.contextPath}/user/to3" class="btn btn-default" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 wow animate__bounceIn">
        <div class="thumbnail">
            <img decoding="async" src="./images/59.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>HUAWEI MateBook 14s </h3>
                <p> 2023 13代酷睿i7 16GB 1TB 14.2英寸2.5K高刷触控屏 深空灰
                    <br>抢购价 ¥7999.00
                </p>
                <p>
                    <a id="zb" href="#" class="btn btn-primary" role="button"><i
                            class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 wow fadeInUp">
        <div class="thumbnail">
            <img decoding="async" src="./images/52.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>iPad
                    第十代</h3>
                <p>搭载 A14 仿生芯片，能同时运行多个 app 并顺畅切换
                    10.9 英寸 Liquid 视网膜显示屏¹，全面屏设计，观感惊艳
                    横向 1200 万像素超广角前置摄像头，支持人物居中功能，带来出色的视频通话体验
                    超快的 802.11ax 无线局域网和 5G 无线连接，随时随地能上网²
                    兼容 Apple Pencil (第一代)³、妙控键盘双面夹和智能双面夹
                    RMB 3599 起</p>
                <p>
                    <a id="zb" href="#" class="btn btn-primary" role="button"><i
                            class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a id="zb" href="${pageContext.request.contextPath}/user/to2" class="btn btn-primary" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>
<!--*-->
<div id="carousel-example-generic" class="container carousel slide wow animate__zoomInUp" data-ride="carousel">
    <!-- Indicators -->


    <!-- Wrapper for slides -->
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="zoomImage" style="background-image:url(./images/60.png)"></div>

        </div>
    </div>
</div>
<div style="height: 80px;"></div>
<div class="container">
    <div class="col-sm-6 col-md-3 wow animate__rotateIn">
        <div class="thumbnail">
            <img decoding="async" src="./images/54.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>戴尔 UltraSharp 27 4K USB-C HUB 显示器 - U2723QE</h3>
                <p>这款 27 英寸显示器具有亮丽色彩和出色对比度，同时在业界率先采用 IPS Black 技术并配备连接端口中心，让您高效工作
                    ¥ 7561.96
                </p>
                <p>
                    <a id="zb" href="#" class="btn btn-primary" role="button"><i
                            class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a id="zb" href="#" class="btn btn-primary" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 wow animate__rollIn">
        <div class="thumbnail">
            <img decoding="async" src="./images/55.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>Galaxy Z Flip4</h3>
                <p>掌心折叠设计 立式自由拍摄系统 8GB+256GB 5G折叠屏手机 幽紫秘境 到手价￥6299
                </p>
                <p>
                    <a href="#" class="btn btn-default" role="button">
                        <i
                                class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 wow animate__zoomInUp">
        <div class="thumbnail">
            <img decoding="async" src="./images/56.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3>Galaxy S23 Ultra</h3>
                <p>秒杀价格￥7299</p>
                <p>
                    <a id="zb" href="#" class="btn btn-primary" role="button"><i
                            class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a href="#" class="btn btn-default" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 wow animate__slideInRight">
        <div class="thumbnail">
            <img decoding="async" src="./images/57.png"
                 alt="通用的占位符缩略图">
            <div class="caption">
                <h3> iPad Pro</h3>
                <p>11 英寸显示屏
                    Liquid 视网膜显示屏
                    RMB 283/月起或
                    RMB 6799 起
                </p>
                <p>
                    <a id="zb" href="#" class="btn btn-primary" role="button"><i
                            class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>

                    </a>
                    <a id="zb" href="#" class="btn btn-primary" role="button">
                        了解更多
                    </a>
                </p>
            </div>
        </div>
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


</body>
</html>