<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<title>猜数游戏</title> 
</head>
<body onload="form1.yourGuess.focus()">
<center>随机生成一个1-100之间的整数，请猜测!</center>
<center>
<form method="get" action="<%=response.encodeURL("result.jsp") %>" name="form1">
<input type="text" name="yourGuess">
<input type="submit" value="确定" name="button1">
</form>
<%
	if(session.getAttribute("realNumber")==null)
	{
		int r=(int)(Math.random()*100)+1;
		session.setAttribute("realNumber",new Integer(r));
		session.setAttribute("count",new Integer(0));
		session.setAttribute("min",new Integer(1));
		session.setAttribute("max",new Integer(100));
	}
	else
	{
		String s=(String)session.getAttribute("mess");
		if(s!=null)
		{
			int min=((Integer)session.getAttribute("min")).intValue();
			int max=((Integer)session.getAttribute("max")).intValue();
%>
继续努力，你猜<font color="red"><%=s %></font>了，正确的数字在<font color="red"><%=min %></font>到<font color="red"><%=max %></font>之间。
<%
}
}
%>
</center>
</body>
</html>