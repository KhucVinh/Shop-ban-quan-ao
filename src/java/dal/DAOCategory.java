/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;


/**
 *
 * @author DELL
 */
public class DAOCategory extends DBContext{
     public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = " select * from categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("cid"),
                                          rs.getString("cname"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
     
     
     
     public static void main(String[] args) {
        DAOCategory dc= new DAOCategory();
        List<Category> list = dc.getAllCategory();
        for(Category o : list ){
            System.out.println(o);
        }
    }
}
