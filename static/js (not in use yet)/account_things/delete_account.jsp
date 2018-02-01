<%-- 
    Document   : delete
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
    </head>
    
    <body>
        
        
        
      <ul>
        <li><a href="{{url_for('my_feed')}}">HomePage</a></li>
        <li><a href="{{url_for('sign_up')}}">Sign Up</a></li>
        <li><a href="{{url_for('sign_in')}}">Sign In</a></li>
        <li><a href="{{url_for('change_password')}}">Change Password</a></li>
        <li><a href="{{url_for('delete_account')}}">Delete Account</a></li>
      </ul>
        
        
        
        
        
   <form name="newForm" action="check_sign_up.jsp" method="POST" onsubmit="return checkF(this)">
     <font><p><h2>Delete account:</h2></p></font>
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
                </tbody>
        </table>
    </form>
        <input action="checksign.jsp"   type="submit" value="Delete" name="Delete" />
    </body>
</html>
