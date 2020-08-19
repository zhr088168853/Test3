<%-- 
    Document   : count
    Created on : 2020-4-20, 17:31:02
    Author     : ZY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>计算测试</title>
    </head>
    <body>
        <h1>计算测试</h1><br>
    <form action="calculate.jsp" method="get">
    运算数1：<input type="text" name="num1"><br>
    运算数2：<input type="text" name="num2"><br>
    <input type="submit" name="operation" value="+">
    <input type="submit" name="operation" value="-">
    <input type="submit" name="operation" value="*">
    <input type="submit" name="operation" value="/">
    </form>
    <hr size=10 color="blue">
    </body>
</html>
