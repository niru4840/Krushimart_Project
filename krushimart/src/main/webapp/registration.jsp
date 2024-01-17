<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		.register {
			border: 5px solid rgb(233, 173, 192);
			border-width: 100px;
			margin: 20px;
			padding: 10px;
		}

		.btn {
			height: 40px;
			width: 120px;
		}

		.btns {
			margin: 10px;
			padding: 20px;
			background-color: rgb(187, 0, 187);
		}
	</style>
</head>
<body>
	<% String message = (String)request.getAttribute("accountNotFound"); 
		if(message!=null){
	%>
	<%= message %>
	<%} %>
	
	<center>
		<form action="registration" method="POST">
			<div>
				<label style="color: rgb(187, 0, 187); font-size: 30px;"><b><u>REGISTRATION
							FORM</u></b></label><br><br><br>
				<input type="number" name="id" placeholder="Enter your id" maxlength="2"><br><br>
				<input type="text" name="first_name" placeholder="Enter your first name" maxlength="20"><br><br>
				<input type="text" name="last_name" placeholder="Enter your last name" maxlength="20"><br><br>
				<input type="tel" name="phone" placeholder="Enter your phone" maxlength="10"><br><br>
				<input type="text" name="address" placeholder="Enter your address" maxlength="20"><br><br>
				<input type="email" name="email" placeholder="Enter your email" maxlength="20"><br><br>
				<input type="password" name="password" placeholder="Enter your password" maxlength="8"><br><br>
				<input type="radio" name="role" value="farmer" selected hidden>Farmer
				<input type="radio" name="role" value="buyer">Buyer
			</div>
			<div class="btns">
				<button type="submit" class="btn">Submit</button>
				<button type="reset" class="btn">Reset</button>
			</div>
			
		kokateshrikant887@gmail.com

		</form>
	</center>
</body>
</html>