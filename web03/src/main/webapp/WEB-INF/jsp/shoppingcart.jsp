<%--
  Created by IntelliJ IDEA.
  User: 小鱼仔和氧气
  Date: 2023/6/11
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script src="../js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="../css/animate.min.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: white;

        }

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
        }

        .item img {
            width: 80px;
            height: 80px;
        }

        #deleteItem {
            border-radius: 25px;
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
<!-- 个人中心-->
<div style="height: 80px;"></div>
<div class="col-md-4 column"></div>
<div class="col-md-4 column">
    <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
        <input type="text" name="queryBookName" class="form-control" placeholder="输入查询书名" required>
        <input type="submit" value="查询" class="btn btn-primary">
    </form>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>商品列表 —— 显示所有商品</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/goods/toAddGoods">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>商品编号</th>
                    <th>商品名字</th>
                    <th>商品类型</th>
                    <th>商品库存</th>
                    <th>商品价格</th>
                    <th>商品图片</th>
                    <th>商品描述</th>
                    <th>商品状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${goodsMap}">
                    <c:forEach var="goods" items="${mycarts}">
                        <tr>
                            <td>${goods.goodsId}</td>
                            <td>${goods.goodsName}</td>
                            <td>${item.key}</td>
                            <td>${goods.goodsNum}</td>
                            <td>${goods.price}</td>
                            <td background="../images/${goods.img}" height="7"></td>
                            <td>${goods.intro}</td>
                            <td>${goods.status}</td>
                            <td>
                                    <%--                                <a href="${pageContext.request.contextPath}/goods/toUpdateGoods?id=${goods.getGoodsID()}">更改</a>--%>
                                    <%--                                |--%>
                                    <%--                                <a href="${pageContext.request.contextPath}/goods/deleteGoods/${goods.getGoodsID()}">删除</a>--%>
                            </td>
                        </tr>
                    </c:forEach>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div style="height: 100px;"></div>

<!-- fotter -->
<img src="../images/66.png" class="img-responsive center-block container">

<div style="height:100px;"></div>
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
</body>
</html>