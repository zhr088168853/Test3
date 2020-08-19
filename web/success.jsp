<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<title>猜测成功</title>
</head>
<body>
<%
	String s=(String)session.getAttribute("mess");
	if(s==null||!s.equals("成功"))
	{
		response.sendRedirect("inputguess.jsp");
		return;
	}
%>
恭喜你，猜对了。<br>
您共猜了<%=session.getAttribute("count").toString() %>次，这个数字就是<%=session.getAttribute("realNumber").toString() %>
<br>
<a href="<%=response.encodeURL("inputguess.jsp") %>">再玩一次</a>
<%session.invalidate();
%>
</body>
</html>