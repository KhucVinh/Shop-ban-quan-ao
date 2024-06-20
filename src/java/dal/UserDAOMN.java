package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.User;
//import util.DBConnection;

public class UserDAOMN {
	public static ArrayList<User> getUsers() {
		// láº¥y dá»¯ liá»‡u tá»« db 
		Connection conn = DBConnection.getJDBCConnection();
		ArrayList<User> users = new ArrayList<>(); 
		String sql ="select * from btlweb.sign_up";
		
		try {
			PreparedStatement st = conn.prepareStatement(sql);
          ResultSet rs = st.executeQuery();
			while(rs.next()) {
				User user = new User(
                        rs.getString("phone"),
                        rs.getString("email"),
                       
                        rs.getString("password"),
                        rs.getString("cfpassword"),
                        rs.getString("fname"),
                        rs.getString("lname"),
                        rs.getInt("mid"));
                users.add(user);
			}
		}catch(SQLException e) {
			
			return null;
		}
		return users;
	}
	

	
	public static User getUserByPhone(String phone) {
		
		Connection conn = DBConnection.getJDBCConnection();

		try {
			String sql = "SELECT * FROM btlweb.sign_up where phone = ?" ;
                        PreparedStatement ps = conn.prepareStatement(sql) ;
                        ps.setString(1, phone);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				return new User(rs.getString(1),
                                        rs.getString(2),
                                        rs.getString(3),
                                        rs.getString(4),
                                        rs.getString(5),
                                        rs.getString(6),
                                        rs.getInt(7)) ;
	
			}
			
		}catch(SQLException e) {	
		}
                return null;
	}
	
	public static void updateUser(String phone, String email , String password , String cfpassword , String lname , String fname , String mid){ 
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update btlweb.sign_up\n" +
                                         "set email = ? , \n" +
                                        	"password = ? ,\n" +
                                            "cfpassword = ? ,\n" +
                                            "fname = ? , \n" +
                                            "lname = ? ,\n" +
                                            "mid = ? \n" +
                                         "where phone = ? " ;
                try {
			
			PreparedStatement ps = conn.prepareStatement(sql) ;
                        ps.setString(1, email);
			ps.setString(2, password);
                        ps.setString(3, cfpassword);
                        ps.setString(4, fname);
                        ps.setString(5, lname);
                        ps.setString(6, mid);
                        ps.setString(7, phone);
                        ps.executeUpdate() ; 
		}catch (SQLException e) {	
		}
	}
	
	public static void deleteUser(String phone) {
		Connection conn = DBConnection.getJDBCConnection();
		try {
			String sql = "DELETE FROM btlweb.sign_up WHERE  phone = ?" ;
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, phone);
                        ps.executeUpdate();
			
		}catch (Exception e) {
			
			
		}
	}
        	public static void changeUser(String phone, String email , String lname , String fname ){ 
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update btlweb.sign_up set email=? , fname=? , lname= ? where phone = ? " ;
                try {
			
			PreparedStatement ps = conn.prepareStatement(sql) ;
                        ps.setString(1, email);
//			ps.setString(2, password);
//                        ps.setString(3, cfpassword);
                        ps.setString(2, fname);
                        ps.setString(3, lname);
//                        ps.setString(6, mid);
                        ps.setString(4, phone);
                        ps.executeUpdate() ; 
		}catch (SQLException e) {	
		}
                }
                public static void changePass(String phone, String password , String cfpassword ){ 
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update btlweb.sign_up set password=? , cfpassword=?  where phone = ?" ;
                try {
			
			PreparedStatement ps = conn.prepareStatement(sql) ;
                        ps.setString(1, password);
                        ps.setString(2, cfpassword);
                        ps.setString(3, phone);
                        ps.executeUpdate() ; 
		}catch (SQLException e) {	
		}
	}
//		public User layThongTinTaiKhoan(String email) {
//                    Connection conn = DBConnection.getJDBCConnection();
//		try {
//			String sql = "select * from demo.user where email='"+email+"'" ;
//                        PreparedStatement ps = conn.prepareStatement(sql) ;
//                      
//			ResultSet rs = ps.executeQuery();
//			while(rs.next()) {
//				int phone = rs.getInt(1) ;
//				String email1 = rs.getString(2) ; 
//				String password = rs.getString(3) ; 
//				String cfpassword = rs.getString(4) ; 
//				String fname = rs.getString(5) ; 
//				String lname = rs.getString(6) ; 
//                                int mid = rs.getInt(7) ; 
//			
//				return new User(phone,email1,password,cfpassword,fname,lname,mid) ; 
//				
//			}
//		} catch (Exception e) {
//		}
//		
//		return null ; 
//	}
//       
	public boolean kiemTraDangNhap(String email , String password) {
		Connection conn = DBConnection.getJDBCConnection();
		try {
			
			String sql = "select * from btlweb.sign_up where email='"+email+"'" ;
                        PreparedStatement ps = conn.prepareStatement(sql) ;
                      
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getString(2).equals(email) && rs.getString(3).equals(password)&& rs.getInt(7) == 1) {
					return true  ; 
				}
			}
		
		} catch (Exception e) {
	
		}
		return false;
	}
	 public static void main(String[] args) {
        UserDAOMN p= new UserDAOMN();
//         List<String> list = p.getAllColor();
          ArrayList<User> list = p.getUsers();
//        int count = p.countAllProdunt();
        for (User product : list) {
        System.out.println(product);
        }}
}
