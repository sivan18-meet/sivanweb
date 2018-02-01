<%-- 
    Document   : sign_up
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign In</title>
        <link rel=stylesheet type=text/css href="{{ url_for('static', filename='css/bootstrap.min.css') }}">
        <link rel=stylesheet type=text/css href="{{ url_for('static', filename='css/style.css') }}">

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <script type="text/javascript">


function checkF(newForm){

if(newForm.username.value < 1)

{


alert("Userame is too Short");

return false;

}


if(newForm.password.value < 1)

{


alert("Passowrd is too Short");

return false;

}




}


</script>
       </head>

   
    <body>
        
        
        
     <ul>
     <li><a href="{{url_for('my_feed')}}"><button type="button" style="font-style: Monospace;font-size: 20px;" class="btn">Homepage</button></a></li>

   <li><a href="{{url_for('sign_up')}}"><button type="button" style="font-style: Monospace;font-size: 20px;" class="btn">Sign Up</button></a></li>

    <li><a href="{{url_for('sign_in')}}"><button type="button" style="font-style: Monospace;font-size: 20px;" class="btn">Sign In</button></a></li>

     <li><a href="{{url_for('password')}}"><button type="button" style="font-style: Monospace;font-size: 20px;" class="btn">Change Password</button></a></li>

      <li><a href="{{utl_for('delete')}}"><button type="button" style="font-style: Monospace;font-size: 20px;" class="btn">Delete Account</button></a></li>

         
       
        
        </ul>
 
        <form name="newForm" action="checksign.jsp" method="POST" onsubmit="return checkF(this)">
     <font color="#7F525D"><p><h2>Sign Up:</h2></p></font>
        <table>
            <tbody>
                <tr>
            <p><td><font size="4" color="#191970">username:</td></font></p>
                    <td><input type="text" name="username" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                
                <tr>
                <td><p><font size="4" color="#191970">password:</td></font></p>
                    <td><input type="password" name="password" value="" size="50" onsubmit="return checkF(this)" /></td>
                </tr>
                <tr>
                <p><td><font size="4" color="#191970">age:</td></font></p>
                            <td><select name="age">
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                    <option>24</option>
                                    <option>25</option>
                                    <option>26</option>
                                    <option>27</option>
                                    <option>28</option>
                        </select></td>
                </tr>
                <tr>
                <td><p><font size="4" color="#191970">gender:</td></font></p>
                    <td><input type="radio" name="gender" value="female" />Female
                    <input type="radio" name="gender" value="male" />Male
                    </td>
                </tr>
                <tr>
                <p><td><font size="4" color="#191970">email:</td></font></p>
                    <td><input type="text" name="email" value="" size="50" />
                    </td>
                </tr>
              <td><p><font size="4" color="#191970">fan level:</font></p></td>
            <td><input type="checkbox" name="level" value="ON"  selected="selected" />high
            <input type="checkbox" name="level" value="Off" selected="selected" />low
            </td>
             </tbody>
           </table>
            <input type="submit" value="submit" name="submit" />
        <input type="reset" value="reset" name="reset" />
    </form>
