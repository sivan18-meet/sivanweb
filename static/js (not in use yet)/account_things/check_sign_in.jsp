<%-- 
    Document   : check_sign_in
    Author     : Layan
--%>
<%@page import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
         <%  String driver="com.mysql.jdbc.Driver";
Class.forName(driver).newInstance();
            
String url = "";// שם הקישור למסד נתונים שאתם נתתם
Connection con = DriverManager.getConnection(url, "root", "root");// אובייקט שאחראי על ההתחברות למסד נתונים


//פרמטרים של הטופס שלכם לפי מה שאתם הגדרתם
String uname = request.getParameter("username");
String pass = request.getParameter("password");

//יצירת אובייקט שאילתא
Statement state=con.createStatement();

   String sq=String.format("select * from '''#FIX.ME''' where(username='"+uname+"' and password='"+pass+"')");
            ResultSet re=state.executeQuery(sq);
            if(re!=null && re.next())
            {
                response.sendRedirect("debate.html");
            }
            else{
                out.println("you are not a member");
            }        
            con.close();
            %>
    </body>
</html>





