<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<title>�²�ɹ�</title>
</head>
<body>
<%
	String s=(String)session.getAttribute("mess");
	if(s==null||!s.equals("�ɹ�"))
	{
		response.sendRedirect("inputguess.jsp");
		return;
	}
%>
��ϲ�㣬�¶��ˡ�<br>
��������<%=session.getAttribute("count").toString() %>�Σ�������־���<%=session.getAttribute("realNumber").toString() %>
<br>
<a href="<%=response.encodeURL("inputguess.jsp") %>">����һ��</a>
<%session.invalidate();
%>
</body>
</html>