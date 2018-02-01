<%-- 
    Document   : sign_in
    Author     : Layan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Sign In</title>
      <link rel=stylesheet type=text/css href="{{ url_for('static', filename='css/bootstrap.min.css') }}">
      <link rel=stylesheet type=text/css href="{{ url_for('static', filename='css/style.css') }}">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
  </head>

  <body>
        
    <ul>

      <li><a  href="{{url_for('my_feed')}}">HomePage</a></li> 
      <li><a  href="{{url_for('sign_up')}}">Sign Up</a></li> 
      <li><a  href="{{url_for('sign_in')}}">Sign In</a></li> 
      <li><a  href="{{url_for('change_password')}}">Change Password</a></li> 
      <li><a  href="{{url_for('delete_account')}}">Delete Account</a></li> 

    </ul>
  
  

<div class="container">
 
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" id="myBtn">Sign In</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body>
          <form action="check_sign_in.jsp"  role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
      
          
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span>Sign In</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="sign.jsp">Sign Up</a></p>
          <p>Forgot <a href="change_password.jsp" >Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>
 
</body>
</html>
