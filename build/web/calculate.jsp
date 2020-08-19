<%-- 
    Document   : calculate
    Created on : 2020-4-20, 17:37:00
    Author     : ZY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>计算结果</title>
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
        <%
     double num1=0.0;     
     double num2=0.0;
     double result=0.0;     if(request.getParameter("num1")!=null)num1=Double.parseDouble(request.getParameter("num1"));     if(request.getParameter("num2")!=null)num2=Double.parseDouble(request.getParameter("num2"));     
     String operation=request.getParameter("operation");
     if(operation!=null)
     {
        if(operation.trim().equals("+"))
        {result=num1+num2;
        }
        if(operation.trim().equals("-"))
        {result=num1-num2;
        }
        if(operation.trim().equals("*"))
        {result=num1*num2;
        }
        if(operation.trim().equals("/"))
        {
            if(num2!=0){
                result=num1/num2;
            }
            else{
                out.println("num2不能等于为0");
            }
        }        
        out.write("<h1>"+num1+operation+num2+"="+result+"</h1>");
     }
     %>
    </body>
</html>
