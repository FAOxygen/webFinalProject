<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>修改信息</title>
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
          <small>修改信息</small>
        </h1>
      </div>
    </div>
  </div>
  <form action="${pageContext.request.contextPath}/goods/updateGoods" method="post">
    <input type="hidden" name="bookID" value="${goods.getGoodsId()}"/>
    商品名字：<input type="text" name="goodsName" value="${goods.getGoodName()}"/>
    商品库存：<input type="text" name="goodsNum" value="${goods.getGoodsNum() }"/>
    商品价格：<input type="text" name="price" value="${goods.getPrice() }"/>
    商品图片：<input type="file" name="img" value="${goods.getImg() }"/>
    商品描述：<input type="text" name="detail" value="${goods.getIntro() }"/>
    商品状态：<input type="radio" name="status" value=1>上架<input type="radio" name="status"
                                                                  value=0>下架/
    <input type="submit" value="提交"/>
  </form>
</div>