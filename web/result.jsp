<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<title>�жϽ��</title>
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
			session.setAttribute("mess","�ɹ�");
			response.sendRedirect("success.jsp");
			return;
		}
		else if(yourGuess>realNumber&&yourGuess<max)
		{
			session.setAttribute("max",new Integer(yourGuess));
			session.setAttribute("mess","��");
		}
		else if(yourGuess<realNumber&&yourGuess>min)
		{
			session.setAttribute("min",new Integer(yourGuess));
			session.setAttribute("mess","С");
		}
		response.sendRedirect(response.encodeURL("inputguess.jsp"));        //��û�¶��������inputguess.jspҳ���
		return;
	}
	catch(NumberFormatException e)      //������Ĳ�����������ִ��
	{
		
		response.setHeader("refresh","3;url=inputguess.jsp");
		out.print("<center>������������3�����ת�ز������档<center>");
	}
%>
</body>
</html>