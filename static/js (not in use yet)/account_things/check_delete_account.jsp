<%-- 
    Document   : check_delete_account
    Author     : Layan
--%>
<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <%
            String driver="com.mysql.jdbc.Driver";
            '''<FIX ME>String url = "jdbc:mysql://localhost:3306/webintro"<FIX ME>''';
            String user = "root";
            String pwd = "root";
            Class.forName(driver).newInstance();
            Connection con = DriverManager.getConnection(url, user, pwd);
           
            String uname = request.getParameter("name");
            String password = request.getParameter("password");
            
            Statement state=con.createStatement();
            
            String sq=String.format("delete from webintro.newuser where(name='"+uname+"' and password='"+password+"')");
            int res = state.executeUpdate(sq);
            if(res==1){
        %>
            <h1>Account was deleted successfully</h1><br>
        <%
            }else{
            %>
                <h1>Your are not a member.</h1><br>
                <%
            }        
            con.close();
         %>

    </head>
    <body>
     
    </body>
</html>
