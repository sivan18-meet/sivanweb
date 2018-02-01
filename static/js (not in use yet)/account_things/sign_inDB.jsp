<%-- 
    Document   : sign_in
    Author     : Layan
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
       <% String username=request.getParameter("username"); 
          String password=request.getParameter("password") ;

        %>
   <%
            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/layan";
            String user="root";
            String pwd="root";
            Class.forName(driver).newInstance();
            Connection con=DriverManager.getConnection(url,user,pwd);
            
            //יצירת אובייקט שאילתא
Statement state=con.createStatement();

String sq=String.format("select * from layan.makhoul where(username='"+username+"' and password='"+password+"')");
            ResultSet re=state.executeQuery(sq);
            if(re!=null && re.next())
            {
                response.sendRedirect("pictures.html");
            }
            else{
                out.println("you are not a member");
                 
            }        
            con.close();
        %>
        
          
    </body>
</html>