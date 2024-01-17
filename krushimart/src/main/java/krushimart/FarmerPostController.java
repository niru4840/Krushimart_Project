package krushimart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/farmerPost")
public class FarmerPostController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int postId = Integer.parseInt(req.getParameter("postId")); 
		String productName = req.getParameter("productName");
		String productQuantity = req.getParameter("productQuantity");
		String productPrice = req.getParameter("productPrice");
		String productDescription = req.getParameter("ProductDescription");
		
		System.out.println(req.getParameter("id"));
		
		int farmerId = Integer.parseInt(req.getParameter("id"));
		
		
		
		Post post = new Post(postId, productName, productQuantity, productPrice, productDescription, farmerId);
		System.out.println(post);
		
		PostCRUD postCRUD = new PostCRUD();
		
		try {
			if(postCRUD.InsertPost(post)!=0) {
				
				System.out.println("Post Created Successfully!!!");
				
				List<Post> list = postCRUD.getAllPosts();
				req.setAttribute("postList", list);
				req.setAttribute("farmerId",req.getParameter("id"));
				RequestDispatcher dispatcher = req.getRequestDispatcher("farmerHomePage.jsp");
				dispatcher.forward(req, resp);
			}
			else {
				System.out.println("Post creation failed");
				PrintWriter printWriter =resp.getWriter();
				printWriter.print("post creation Failed");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
	}
}
