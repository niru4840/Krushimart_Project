<%@page import="krushimart.Post"%>
<%@page import="krushimart.PostCRUD"%>
<%@page import="java.util.List"%>
<%@page import="krushimart.User"%>
<%@page import="krushimart.UserCRUD"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      #card {
        height: 175px;
        width: 500px;
        background-color: sienna;
        display: flex;
        flex-direction: row;
        margin:10px; 
      }
      #img {
        background-color: aquamarine;
        height: 100%;
        width: 40%;
      }
      #desc {
        background-color: rgb(127, 129, 255);
        height: 100%;
        width: 60%;
      }
    </style>
</head>
<body>
	<%int id = Integer.parseInt(request.getParameter("id")); 
		UserCRUD userCRUD = new UserCRUD();
		User user =userCRUD.fetchUserObject(id);
		PostCRUD postCRUD = new PostCRUD();
		List<Post> list = postCRUD.getPostByFarmerId(id);
		
	%>
	<h1>Farmer Profile page</h1>
	
	<br>
	<br>
	<div>
		<ul id="menu">
			<li><a href="farmerHomePage.jsp?id=<%=id%>">Home</a></li>

			<li><a href="farmerPost.jsp?id=<%=id%>">Post</a></li>

			<li><a href="farmerProfile.jsp?id=<%=id%>">Profile</a></li>

			<li><a href="farmerAbout.jsp">About</a></li>

			<li><a href="farmerContact.jsp">Contact</a></li>
		</ul>
	</div>
	
	
	<div id="profile">
      <div id="profileImage">Image</div>
      <div id="details">
        <h6>Name: <%= (user.getFirst_name()+user.getLast_name()) %></h6>
        <h6>Email: <%= user.getEmail() %></h6>
        <h6>Phone: <%=user.getPhone()%></h6>
        <h6>Address: <%=user.getAddress()%></h6>
      </div>
    </div>
    <a href="editProfile.jsp?id=<%=id%>"><button>Edit profile</button></a>
    <a href="changePassword.jsp"><button>Change Password</button></a>
    <a href="farmerPost.jsp?id=<%=id%>"><button>Add Post</button></a>
    <button>delete post</button>
    
   <% if(list!=null)
	{
		for(Post p : list){
		%>
	<div id="card">
      <div id="img">img</div>
      <div id="desc">
        <h6>Product Name :<%=p.getProductName() %></h6>
        <h6>Product Quantity :<%=p.getProductQuantity() %></h6>
        <h6>Product Price :<%=p.getProductPrice()%></h6>
        <h6>Product Description :<%=p.getProductDescription() %></h6>
      </div>
    </div>
	<%}} %>
</body>
</html>