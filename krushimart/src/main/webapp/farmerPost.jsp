<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.split {
	height: 50%;
	width: 50%;
	position: fixed;
	z-index: 0;
	overflow-x: hidden;
	padding-top: 20px;
}

.left {
	left: 0;
}

.right {
	right: 0;
}

.centered {
	background-color: transparent;
	width: 200px;
	height: 100px;
	border: 5px solid black;
	padding: 50px;
	margin: 20px;
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.box {
	height: 500px;
	width: 500px;
	border: 100px line #f32177;
	border-radius: 0%;
}

.field {
	height: 300px;
	width: 1490px;
}
</style>
</head>
<body>
	<%int id = Integer.parseInt(request.getParameter("id")); %>
	<div>
		<ul id="menu">
			<li><a href="farmerHomePage.jsp?id=<%=id%>">Home</a></li>

			<li><a href="farmerPost.jsp?id=<%=id%>">Post</a></li>

			<li><a href="farmerProfile.jsp?id=<%=id%>">Profile</a></li>

			<li><a href="farmerAbout.jsp">About</a></li>

			<li><a href="farmerContact.jsp">Contact</a></li>
		</ul>
	</div>
	<div>
		<fieldset class="field">
			<div class="split left">
				<div class="centered">
					<span class="box"></span>
					<button>Add Image</button>
				</div>
			</div>
			<div class="split right">
			
				<form action="farmerPost?id=<%=id %>" method="post">

					<div align="center">
						<h1>Post Page</h1>
						<div>
							<input type="number" placeholder="Post Id" name="postId">
							<input type="text" id="productName" name="productName"
								 placeholder="Product Name" size="51px"
								><br> <br>
							
							<input type="text" id="productQuantity" name="productQuantity"
									 placeholder="Product Quantity" size="35.4px">
						
							
							<br> <input type="text" id="productPrice"
								name="productPrice"  placeholder="Product Price"
								size="51px"><br> <br> <input type="text"
								id="productDescription" name="ProductDescription"
								placeholder="Product Description" size="51px"><br>
							<br>

						</div>
						<input type="submit" value="Post"> 
						<button align="center"><b> <a href="farmerHomePage.jsp?id=<%=id%>">Cancel</a> </b></button>
					</div>

					<div id="img"></div>


				</form>
			</div>
		</fieldset>
	</div>
</body>
</html>