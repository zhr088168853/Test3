<%-- 
    Document   : success1
    Created on : 2020-6-19, 19:01:11
    Author     : ZY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>登陆成功！</h1>
        <%
        //10秒后一个session自动失效，也就是10秒后再次刷新页面认为是一次新的登录。
        //获取系统生成的会话id。
        String userSessionId=session.getId();
	String storedSessionId=(String)session.getAttribute("storedSessionId");
		//站点访问次数处理
	//如果以前没有用户访问，此次为第一次访问，则设置计数器值为1
        if(application.getAttribute("webVisitedCount")==null){
		application.setAttribute("webVisitedCount","1");
		session.setAttribute("storedSessionId",userSessionId);
		out.println("欢迎,您是第1位访客！");
	}
	else{
	//如果以前已有用户访问，则根据次用户是新登录用户还是已经登录的用户决定是否计数。
	    if(!userSessionId.trim().equals(storedSessionId))
	    {  //新登录用户，则进行一次新的计数，计数值增加1。
		   int i = Integer.parseInt((String)application.getAttribute("webVisitedCount"));
		   i++;
		   application.setAttribute("webVisitedCount",String.valueOf(i));
		   session.setAttribute("storedSessionId",userSessionId);
		   out.println("欢迎,您是第"+i+"位访客！");
		}
		else
		{  //登已经登录用户，不计数。
		   int i = Integer.parseInt((String)application.getAttribute("webVisitedCount"));
		   out.println("欢迎,您是第"+i+"位访客！");
		}
	}
     %>
    </body>
</html>
