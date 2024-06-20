package dal;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import model.User;


public class UserDao extends DBContext{
        public boolean checkEmailExists(String email) {
    String sql = "SELECT COUNT(*) FROM sign_up WHERE email = ?";
    try (PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setString(1, email);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return false;
}

	public boolean themTaiKhoan(Object obj) {
		User u = (User) obj ; 
                String sql ="insert into sign_up (phone,email,password,cfpassword,fname,lname,mid) values('"+u.getPhone()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getCfpassword()+"','"+u.getFname()+"','"+u.getLname()+"',0)";
		try {
			 
			Statement stmt = connection.createStatement() ;
			stmt.executeUpdate(sql) ;
		
			return true ; 
			
		} catch (Exception e) {
	
			e.printStackTrace();
		}
		return false;
	}

	public User layThongTinTaiKhoan(String email) {
            String sql= "select * from sign_up where email='"+email+"'";
		try {   
			PreparedStatement ps = connection.prepareStatement(sql);
                        Statement stmtStatement = connection.createStatement() ; 
			ResultSet rs = stmtStatement.executeQuery(sql) ; 
			while(rs.next()) {
				String phone = rs.getString(1) ;
				String email1 = rs.getString(2) ; 
				String password = rs.getString(3) ; 
				String cfpassword = rs.getString(4) ; 
				String fname = rs.getString(5) ; 
				String lname = rs.getString(6) ; 
                                int mid = rs.getInt(7) ;
			
				return new User(phone,email1,password,cfpassword,fname,lname,mid) ; 
				
			}
		} catch (Exception e) {
			e.printStackTrace(); 
			System.out.println(e.getMessage()) ; 
		}
		
		return null ; 
	}
	
	public boolean kiemTraDangNhap(String email , String password) {
		String sql="select * from sign_up where email='"+email+"'";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
                        Statement stmtStatement = connection.createStatement() ; 
			ResultSet rs = stmtStatement.executeQuery(sql) ;
			
			while(rs.next()) {
				if(rs.getString(2).equals(email) && rs.getString(3).equals(password)) {
					return true  ; 
				}
			}
		
		} catch (Exception e) {
	
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
        

	public static void main(String[] args) {
		User users = new User("14", "tie.com", "13", "123", "tien", "dona",0) ; 
//		System.out.println(new UserDao().themTaiKhoan(users)) ; 
//		System.out.println(new UserDao().kiemTraDangNhap("tie.com")) ; 
	}

}