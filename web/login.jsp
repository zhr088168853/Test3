<%-- 
    Document   : login
    Created on : 2020-4-20, 16:33:36
    Author     : ZY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登陆</title>
    </head>
    <body>
        <%
	   String username=request.getParameter("username");
	   String userpwd=request.getParameter("userpwd");
	      if(username.trim().equals("zhang")&&userpwd.trim().equals("123456"))
	   { %>
	       <jsp:forward page="success1.jsp"/>        <!--重定向到指定页面-->
   <%}
              else{ %>
	       <jsp:forward page="fail.jsp"/>
	   <%} 
           %>
    </body>
</html>	
