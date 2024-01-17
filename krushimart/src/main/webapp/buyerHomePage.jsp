<%@page import="krushimart.Post"%>
<%@page import="java.util.List"%>
<%@page import="krushimart.PostCRUD"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<body>
	<%
	int id = 0;
	if ((String) request.getAttribute("buyerId") == null) {
		id = Integer.parseInt(request.getParameter("id"));
	} else {
		id = Integer.parseInt((String)request.getAttribute("buyerId"));
	}
	PostCRUD postCRUD = new PostCRUD();
	List<Post> list = postCRUD.getAllPosts();
	%>
	<h2>Buyer home page</h2>
	<br>
	<br>
	<div>
		<ul id="menu">
			<li><a href="#">Home</a></li>

			<li><a href="buyerProfile.jsp?id=<%=id%>">Profile</a></li>

			<li><a href="buyerAbout.jsp">About</a></li>

			<li><a href="buyerContact.jsp">Contact</a></li>
		</ul>
	</div>
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