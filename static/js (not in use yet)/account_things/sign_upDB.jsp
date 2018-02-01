<%-- 
    Document   : signinDB
    Author     : Layan
--%>

<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <%= new java.util.Date()%>
<% String username = request.getParameter("name"); %>
<% String password = request.getParameter("password"); %>
<% String age = request.getParameter("age"); %>
<% String gender = request.getParameter("gender"); %>
<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/layan";
String user="root";
String pwd="root";
Class.forName(driver).newInstance();
Connection con=DriverManager.getConnection(url,user,pwd);

String sqlStr = String.format("insert into layan.makhoul VALUES(NULL,'"+username+"','"+password+"','"+age+"','"+gender+"');");
out.print(sqlStr);
Statement state=con.createStatement();
int res=state.executeUpdate(sqlStr);
con.close();
%>
      <%if (res ==1) {
      response.sendRedirect("login.html");
      %>
      
              <% }
      else{
          %>
          <h1>user was not requisted</h1>
          <% } %>
</head>
</html>
