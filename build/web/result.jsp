<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<title>判断结果</title>
</head>
<body>
<%
	String input=request.getParameter("yourGuess");
	if(input==null||input.equals(""))
	{
		response.sendRedirect("inputguess.jsp");
		return;
	}
	try
	{
		int yourGuess=Integer.parseInt(input);
		int realNumber=((Integer)session.getAttribute("realNumber")).intValue();
		int min=((Integer)session.getAttribute("min")).intValue();
		int max=((Integer)session.getAttribute("max")).intValue();
		int n=((Integer)session.getAttribute("count")).intValue();
		n++;
		session.setAttribute("count",new Integer(n));		
		if(yourGuess==realNumber)
		{
			session.setAttribute("mess","成功");
			response.sendRedirect("success.jsp");
			return;
		}
		else if(yourGuess>realNumber&&yourGuess<max)
		{
			session.setAttribute("max",new Integer(yourGuess));
			session.setAttribute("mess","大");
		}
		else if(yourGuess<realNumber&&yourGuess>min)
		{
			session.setAttribute("min",new Integer(yourGuess));
			session.setAttribute("mess","小");
		}
		response.sendRedirect(response.encodeURL("inputguess.jsp"));        //若没猜对则继续在inputguess.jsp页面猜
		return;
	}
	catch(NumberFormatException e)      //若输入的不是整数，则执行
	{
		
		response.setHeader("refresh","3;url=inputguess.jsp");
		out.print("<center>请输入整数，3秒后跳转回猜数界面。<center>");
	}
%>
</body>
</html>