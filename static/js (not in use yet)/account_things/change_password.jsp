<%-- 
    Document   : change_password
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Change Password</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
   
    
    
    
    <ul>
      <li><a href="{{url_for('my_feed')}}">HomePage</a></li>
      <li><a href="{{url_for('sign_up')}}">Sign Up</a></li>
      <li><a href="{{url_for('sign_in')}}">Sign In</a></li>
      <li><a href="{{url_for('delete_account')}}">Delete Account</a></li>

        </ul>
    
    
    
<form name="newForm" action="checkpassword.jsp" method="POST" onsubmit="return checkF(this)">
     <font><p><h2>Change Password:</h2></p></font>
        <table>
            <tbody>
                <tr>
            <p><td><font size="4">username:</td></font></p>
                    <td><input type="text" name="username" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                
                <tr>
                <td><p><font size="4">password:</td></font></p>
                    <td><input type="password" name="password" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                 <tr>
                <td><p><font size="4">new password:</td></font></p>
                    <td><input type="password" name="new password" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                            </tbody>
                 </table>
                    <input type="submit" value="submit" name="submit" />
        <input type="reset" value="reset" name="reset" />
    </body>
</html>
