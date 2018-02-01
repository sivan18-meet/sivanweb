<%-- 
    Document   : check_sign_up
    Author     : Layan
--%>

<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
          String driver="com.mysql.jdbc.Driver";
Class.forName(driver).newInstance();
            
String url = "jdbc:mysql://localhost:3306/hytm";
Connection con = DriverManager.getConnection(url, "root", "root");



String uname = request.getParameter("username");
String pass = request.getParameter("password");
String age = request.getParameter("age");

Statement state=con.createStatement();


String sqlStr = String.format("insert into hytm.hytm VALUES(NULL,'"+uname+"','"+pass+"','"+age+"');");
 

 int res=state.executeUpdate(sqlStr);


 con.close();

          %>
    </body>
</html>
