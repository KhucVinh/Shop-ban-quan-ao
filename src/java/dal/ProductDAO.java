package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Product;

public class ProductDAO {
    public static ArrayList<Product> getProducts() {
        Connection conn = DBConnection.getJDBCConnection();
        ArrayList<Product> products = new ArrayList<>();

        try {
            ResultSet rs = conn.prepareStatement("SELECT * FROM product").executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setImage(rs.getString("image"));
                product.setPrice(rs.getDouble("price"));
                product.setDescription(rs.getString("description"));
                product.setColor(rs.getString("color"));
                product.setSize(rs.getString("size"));
                product.setImage2(rs.getString("image2"));
                product.setCateid(rs.getInt("cateid"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return products;
    }

    public static boolean addProduct(Product product) {
        Connection conn = DBConnection.getJDBCConnection();
        try {
            String sql = "INSERT INTO product (name, image, price, description, color, size, image2, cateid)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setDouble(3, product.getPrice());
            ps.setString(4, product.getDescription());
            ps.setString(5, product.getColor());
            ps.setString(6, product.getSize());
            ps.setString(7, product.getImage2());
            ps.setInt(8, product.getCateid());

            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Product getProductById(int id) {
        Connection conn = DBConnection.getJDBCConnection();
        Product product = null;

        try {
            String sql = "SELECT * FROM product WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setImage(rs.getString("image"));
                product.setPrice(rs.getDouble("price"));
                product.setDescription(rs.getString("description"));
                product.setColor(rs.getString("color"));
                product.setSize(rs.getString("size"));
                product.setImage2(rs.getString("image2"));
                product.setCateid(rs.getInt("cateid"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    public static boolean updateProduct(Product product) {
        Connection conn = DBConnection.getJDBCConnection();
        try {
            String sql = "UPDATE product SET name=?, image=?, price=?, description=?, color=?, size=?, image2=?, cateid=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setDouble(3, product.getPrice());
            ps.setString(4, product.getDescription());
            ps.setString(5, product.getColor());
            ps.setString(6, product.getSize());
            ps.setString(7, product.getImage2());
            ps.setInt(8, product.getCateid());
            ps.setInt(9, product.getId());

            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

   	public static boolean deleteProduct(Product product) {
		Connection conn = DBConnection.getJDBCConnection();
		try {
			String sql = "delete from product where id=" +product.getId();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();
			return true;
		}catch (SQLException e) {
			return false;
		}
	}

}
