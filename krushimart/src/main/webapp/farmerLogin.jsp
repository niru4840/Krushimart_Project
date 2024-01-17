<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Login</title>
</head>
<body>
	<% String message = (String)request.getAttribute("signUpSuccess"); 
		if(message!=null){
	%>
	<%= message %>
	<%} %>
	
	<% String loginMsg = (String)request.getAttribute("loginFailed"); 
		if(loginMsg!=null){
	%>
	<%= loginMsg %>
	<%} %>
	
	<% String updatePassword = (String)request.getAttribute("updatePassword"); 
		if(updatePassword!=null){
	%>
	<%= updatePassword %>
	<%} %>
	 <div>
    <form action="farmerLogin" method="post">
        <fieldset height="50px" width="50px">
            <label for="">Email</label>
            <br>
            <input type="text" placeholder="Email" name="email" >
            <br>
            <label for="password">Password</label>
            <br>
            <input type="password" placeholder="Password" name="password">
            <br>
            <br>
            <button>LOGIN</button>
            <Button>CANCEL</Button>
            <br><br>
            <a href="changePassord.jsp"><button>Forgot PassWord</button></a>
            
            <button> <a href="registration.jsp">Create Account</a> </button>
        </fieldset>
    </form>
   </div>
	
</body>
</html>