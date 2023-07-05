<%--
  Created by IntelliJ IDEA.
  User: 小鱼仔和氧气
  Date: 2023/6/19
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <c:forEach var="cart" items="${mycarts}">
        <tr>
            <td>name</td>
            <td>${cart.goodsName}</td>
        </tr>
        <tr>
            <td>num</td>
            <td>${cart.num}</td>
        </tr>
        <tr>
            <td>money</td>
            <td>${cart.sum}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
