<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String updatePassword = (String)request.getAttribute("updatePassword"); 
		if(updatePassword!=null){
	%>
	<%= updatePassword %>
	<%} %>
	<div align="center">
        <form  action="updatePassword" method="post">
            <fieldset style="width: 500px; height: 350px;">                
     
          <h1>Change Password</h1>
        <label> Enter Your Email_ID:</label>
        <br>
        <input type="text" name="email" id="" placeholder="Enter Your Email_ID" >
  
        <br><br>
        <label> New Password:</label>
        <br>
        <input type="password" name="newPassword" id=""placeholder="Enter Your New Password" >
        <br><br>    
        <label>  Confirm New Password:</label>
        <br>
        <input type="password" name="confirmPassword" id=""placeholder="Enter Confirm New Password" >
        <br><br>
        <button align="center"><b>UPDATE</b></button> `
        <button align="center"><b> <a href="farmerLogin.jsp">Cancel</a> </b></button>
    </fieldset>
    

       </form>

    </div>
</body>
</html>