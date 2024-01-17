package krushimart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostCRUD {
	
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		// load the driver
		Class.forName("com.mysql.cj.jdbc.Driver");

		// establish connection
		Connection connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/krushimart?user=root&password=root");
		return connection;
	}
	
	public int InsertPost(Post post) throws ClassNotFoundException, SQLException {
		
		Connection connection = getConnection();
		
		PreparedStatement preparedStatement = connection.prepareStatement("insert into post_table(post_id,product_name,product_price,product_quantity,product_description,farmer_id) values(?,?,?,?,?,?)");
		preparedStatement.setInt(1, post.getPostId());
		preparedStatement.setString(2, post.getProductName());
		preparedStatement.setString(3, post.getProductPrice());
		preparedStatement.setString(4, post.getProductQuantity());
		preparedStatement.setString(5, post.getProductDescription());
		preparedStatement.setInt(6, post.getFarmerId());
		
		int result = preparedStatement.executeUpdate();
		
		connection.close();
		
		return result;
		
	}
	
	public List<Post> getAllPosts() throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select post_id,product_name,product_price,product_quantity,product_description,farmer_id from post_table");
		
		ResultSet resultSet = preparedStatement.executeQuery();
		
		List<Post> postList = new ArrayList<>();
		
		while(resultSet.next()) {
			Post post = new Post();
			post.setPostId(resultSet.getInt("post_id"));
			post.setProductName(resultSet.getString("product_name"));
			post.setProductPrice(resultSet.getString("product_price"));
			post.setProductQuantity(resultSet.getString("product_quantity"));
			post.setProductDescription(resultSet.getString("product_description"));
			post.setPostId(resultSet.getInt("farmer_id"));
			
			postList.add(post);			
		}
		connection.close();
		return postList;
	}
	
	public List<Post> getPostByFarmerId(int id) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select post_id,product_name,product_price,product_quantity,product_description,farmer_id from post_table where farmer_id=?");
		preparedStatement.setInt(1, id);
		
		ResultSet resultSet = preparedStatement.executeQuery();
		
		List<Post> postList = new ArrayList<>();
		
		while(resultSet.next()) {
			Post post = new Post();
			post.setPostId(resultSet.getInt("post_id"));
			post.setProductName(resultSet.getString("product_name"));
			post.setProductPrice(resultSet.getString("product_price"));
			post.setProductQuantity(resultSet.getString("product_quantity"));
			post.setProductDescription(resultSet.getString("product_description"));
			post.setPostId(resultSet.getInt("farmer_id"));
			postList.add(post);			
		}
		connection.close();
		return postList;
	}
}
