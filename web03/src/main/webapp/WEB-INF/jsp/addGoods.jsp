<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增商品</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/goods/addGoods" method="post">
        商品名字：<input type="text" name="goodsName"><br><br><br>
        商品类型：<input type="text" name="typeId"><br><br><br>
        商品库存：<input type="text" name="goodsNum"><br><br><br>
        商品价格：<input type="text" name="price"><br><br><br>
        商品图片：<input type="file" name="img"><br><br><br>
        商品描述：<input type="text" name="intro"><br><br><br>
        商品状态：<input type="radio" name="status" value=1>上架<input type="radio" name="status"
                                                                      value=0>下架<br><br><br>
        <input type="submit" value="添加">
    </form>
</div>