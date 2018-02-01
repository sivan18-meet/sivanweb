<%-- 
    Document   : check_change_password
    Author     : HLayan
--%>
<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
             <%
            String driver="com.mysql.jdbc.Driver";
            '''<FIX ME>String url = "jdbc:mysql://localhost:3306/hytm"<FIX ME>;'''
            String user = "root";
            String pwd = "root";
            Class.forName(driver).newInstance();
            Connection con = DriverManager.getConnection(url, user, pwd);
           
            

            String uname = request.getParameter("username");
            String password = request.getParameter("password");
            String newpassword = request.getParameter("newpassword");
            
            Statement state=con.createStatement();
            
            String sq=String.format("update hytm.hytm SET password='"+newpassword+"' where(username='"+uname+"' and password='"+password+"')");
            int res = state.executeUpdate(sq);
            if(res==1){
        %>
            <h1>Account was updated successfully</h1><br>
        <%
            }else{
            %>
                <h1>Your are not a member or account wasn't updated.</h1><br>
                <%
            }        
            con.close();
         %>

        
    </body>
</html>
