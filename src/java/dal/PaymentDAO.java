/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import model.Order;
import model.Payment;

/**
 *
 * @author Admin
 */
public class PaymentDAO extends DBContext {

    public List<Payment> getAll() {
        List<Payment> pay = new ArrayList<>();
        String sql = " select * from payment";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String productsString = rs.getString("products");
                List<String> productsList = Arrays.asList(productsString.split(","));

                Payment c = new Payment(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        productsList,
                        rs.getString("total"),
                        rs.getString("date"),
                        rs.getString("status"));
                pay.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return pay;
    }

    public void insert(Payment c) {
        String sql = "INSERT INTO `btlweb`.`payment`\n"
                + "(`name`,\n"
                + "`email`,\n"
                + "`phone`,\n"
                + "`address`,\n"
                + "`products`,\n"
                + "`total`,\n"
                + "`date`,\n"
                + "`status`)\n"
                + "VALUES (?,?,?,?,?,?,?, 'Chờ xác nhận');";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDateTime = currentTime.format(formatter);
            st.setString(1, c.getName());
            st.setString(2, c.getEmail());
            st.setString(3, c.getPhone());
            st.setString(4, c.getAddress());
            st.setString(5, String.join(",", c.getProducts()));
            st.setString(6, c.getTotal());
            st.setString(7, formattedDateTime);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Payment getPaymentById(String name) {
        String sql = "select * from payment where name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                String productsString = rs.getString("products");
                List<String> productsList = Arrays.asList(productsString.split(","));

                Payment c = new Payment(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        productsList,
                        rs.getString("total"),
                        rs.getString("date"),
                        rs.getString("status"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void confirmOrder(int id) {
        String sql = "UPDATE `btlweb`.`payment`\n"
                + "SET `status` = 'Xác nhận thành công'\n"
                + "WHERE `id` = ? AND `status` = 'Chờ xác nhận'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void cancelOrder(int id) {
        String sql = "UPDATE `btlweb`.`payment`\n"
                + "SET `status` = 'Đơn hàng bị hủy'\n"
                + "WHERE `id` = ? AND `status` = 'Chờ xác nhận'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void deleteOrder(int id) {
        String sql = "DELETE FROM `btlweb`.`payment`\n"
                + "WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public List<Payment> getPaymentByPhone(String phone) {
        List<Payment> payphone = new ArrayList<>();
        String sql = "SELECT * FROM payment WHERE phone=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String productsString = rs.getString("products");
                List<String> productsList = Arrays.asList(productsString.split(","));

                Payment c = new Payment(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        productsList,
                        rs.getString("total"),
                        rs.getString("date"),
                        rs.getString("status"));
                payphone.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return payphone;
    }

    public List<Order> getOrders() {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y') AS order_date,  \n"
                + "       SUM(REPLACE(total, '$', '')) AS total_amount  \n"
                + "FROM btlweb.payment  \n"
                + "GROUP BY DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y')\n"
                + "ORDER BY STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String orderDate = rs.getString("order_date");
                String totalAmount = rs.getString("total_amount");
                Order order = new Order(orderDate, totalAmount, null);
                orders.add(order);
            }

            rs.close();
            st.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    public List<Order> countOrdersInDay() {
        List<Order> countOrders = new ArrayList<>();
        String sql = "SELECT DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y') AS orderdate,  \n"
                + "       COUNT(*) AS ordercount\n"
                + "FROM btlweb.payment\n"
                + "GROUP BY DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y')\n"
                + "ORDER BY STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String orderDate = rs.getString("orderdate");
                String orderCount = rs.getString("ordercount");
                Order order = new Order(orderDate, null, orderCount);
                countOrders.add(order);
            }

            rs.close();
            st.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return countOrders;
    }

    public String TotalAll() {
        String totalAll = "0.00";
        String sql = "SELECT SUM(REPLACE(total, '$', '')) AS totalall FROM btlweb.payment";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                double total = rs.getDouble("totalall");
                DecimalFormat decimalFormat = new DecimalFormat("#,##0.00");
                totalAll = decimalFormat.format(total);
            }

            rs.close();
            st.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return totalAll;
    }

    public String CountOrder() {
        String countOrder = "0.0";
        String sql = "SELECT COUNT(*) AS countorder FROM btlweb.payment;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                countOrder = rs.getString("countorder");
            }

            rs.close();
            st.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return countOrder;
    }

    public List<Order> getOrders1Month() {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y') AS order_date,\n"
                + "       SUM(REPLACE(total, '$', '')) AS total_amount\n"
                + "FROM btlweb.payment\n"
                + "WHERE STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') < (SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment)\n"
                + "  AND STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') >= DATE_SUB((SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment), INTERVAL 1 MONTH)\n"
                + "GROUP BY DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y')\n"
                + "ORDER BY STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String orderDate = rs.getString("order_date");
                String totalAmount = rs.getString("total_amount");
                Order order = new Order(orderDate, totalAmount, null);
                orders.add(order);
            }

            rs.close();
            st.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    public List<Order> countOrdersInDay1m() {
        List<Order> countOrders = new ArrayList<>();
        String sql = "SELECT DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y') AS orderdate,\n"
                + "      COUNT(*) AS ordercount\n"
                + "FROM btlweb.payment\n"
                + "WHERE STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') < (SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment)\n"
                + "  AND STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') >= DATE_SUB((SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment), INTERVAL 1 MONTH)\n"
                + "GROUP BY DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y')\n"
                + "ORDER BY STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String orderDate = rs.getString("orderdate");
                String orderCount = rs.getString("ordercount");
                Order order = new Order(orderDate, null, orderCount);
                countOrders.add(order);
            }

            rs.close();
            st.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return countOrders;
    }

    public String CountOrder1m() {
        String countOrder = "0.0";
        String sql = "SELECT SUM(ordercount) AS countorder\n"
                + "FROM (\n"
                + "    SELECT DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y') AS orderdate,\n"
                + "          COUNT(*) AS ordercount\n"
                + "    FROM btlweb.payment\n"
                + "    WHERE STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') < (SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment)\n"
                + "      AND STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') >= DATE_SUB((SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment), INTERVAL 1 MONTH)\n"
                + "    GROUP BY DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y')\n"
                + "    ORDER BY STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')\n"
                + ") AS subquery;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                countOrder = rs.getString("countorder");
            }

            rs.close();
            st.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return countOrder;
    }

    public String TotalAll1m() {
        String totalAll = "0.00";
        String sql = "SELECT SUM(total_amount) AS totalamount\n"
                + "FROM(\n"
                + "SELECT DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y') AS order_date,\n"
                + "       SUM(REPLACE(total, '$', '')) AS total_amount\n"
                + "FROM btlweb.payment\n"
                + "WHERE STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') < (SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment)\n"
                + "  AND STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y') >= DATE_SUB((SELECT MAX(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y')) FROM btlweb.payment), INTERVAL 1 MONTH)\n"
                + "GROUP BY DATE_FORMAT(STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'), '%d/%m/%Y')\n"
                + "ORDER BY STR_TO_DATE(date, '%H:%i:%s %d/%m/%Y'))\n"
                + "AS subquery;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                double total = rs.getDouble("totalamount");
                DecimalFormat decimalFormat = new DecimalFormat("#,##0.00");
                totalAll = decimalFormat.format(total);
            }

            rs.close();
            st.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return totalAll;
    }

    public static void main(String[] args) {

        PaymentDAO paymentDAO = new PaymentDAO();
        String totalAmount = paymentDAO.TotalAll1m();
        System.out.println("Total Amount: " + totalAmount);
    }
//        PaymentDAO p = new PaymentDAO();
//        List<Order> list = p.countOrdersInDay1m();
////        int count = p.countAllProdunt();
//        for (Order product : list) {
//            System.out.println(product);
//        }
//        PaymentDAO p = new PaymentDAO();
//
//        // Create a new Payment object
//        Payment payment = new Payment();
//        payment.setName("John Doe");
//        payment.setEmail("johndoe@example.com");
//        payment.setPhone("123456789");
//        payment.setAddress("123 Main St");
//        payment.setProducts(Arrays.asList("Product 1", "Product 2"));
//        payment.setTotal("100");
//        payment.setDate("2023-06-09");
//        payment.setStatus("Chờ xác nhận");
//
//        // Insert the payment into the database
//        p.insert(payment);
//
//        // Print a success message
//        System.out.println("Thêm thanh toán thành công!");
}
