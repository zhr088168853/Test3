<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<title>������Ϸ</title> 
</head>
<body onload="form1.yourGuess.focus()">
<center>�������һ��1-100֮�����������²�!</center>
<center>
<form method="get" action="<%=response.encodeURL("result.jsp") %>" name="form1">
<input type="text" name="yourGuess">
<input type="submit" value="ȷ��" name="button1">
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
����Ŭ�������<font color="red"><%=s %></font>�ˣ���ȷ��������<font color="red"><%=min %></font>��<font color="red"><%=max %></font>֮�䡣
<%
}
}
%>
</center>
</body>
</html>