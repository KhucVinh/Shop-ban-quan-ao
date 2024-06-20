/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Order {
    private String orderDate;
    private String totalAmount;
    private String orderCount;

    public Order(String orderDate, String totalAmount,String orderCount) {
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;
        this.orderCount = orderCount;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public String getTotalAmount() {
        return totalAmount;
    }
    public String getOrderCount() {
        return orderCount;
    }

    @Override
    public String toString() {
        return "Order{" + "orderDate=" + orderDate + ", totalAmount=" + totalAmount + ", orderCount=" + orderCount + '}';
    }
    
}
