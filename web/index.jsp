<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录</title>
    </head>  
  <body>
<form action="login.jsp" method="post">
<label for="username">用户名：</label>
<input type="text" name="username" id="username"><br>
<label for="userpwd">用户密码：</label>
<input type="password" name="userpwd" id="userpwd"><br>
<input type="submit" name="submit" id="submit" value="登录">
 </form>
</body>
</html>