<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="col-md-4 column"></div>
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
                    <th>商品数量</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${goodsMap}">
                    <c:forEach var="goods" items="${item.value}">
                        <tr>
                            <td>${goods.goodsId}</td>
                            <td>${goods.goodsName}</td>
                            <td>${item.key}</td>
                            <td>${goods.goodsNum}</td>
                            <td>${goods.price}</td>
                            <td background="../images/${goods.img}" height="7"></td>
                            <td>${goods.intro}</td>
                            <td>${goods.status}</td>
                        </tr>
                    </c:forEach>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>