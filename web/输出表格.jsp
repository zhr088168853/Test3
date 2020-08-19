<%-- 
    Document   : 输出表格
    Created on : 2020-4-20, 18:15:05
    Author     : ZY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>输出表格</title>
    </head>
    <style type="text/css">
    table
    {
    border-collapse :collapse ;
    }
    th,td
    {
    width:100px;
    height:40px;
    border :1px solid black;
    font-size:12px;
    text-align :center;
    background:aqua;
    }
    </style>
    <body>      
        <h3>输出三行两列的表格!</h3 >      
        <table>
        <%
        for(int i=0;i<3;i++){
        %><th>
        <%
        for(int j=0;j<2;j++){%>
        <td>aaa</td>
        <%}%>
        </th>
        <%}%>
</table>   
    </body>
</html>
