package control;

import dal.PaymentDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Order;

@WebServlet(name = "ThongKeServlet", urlPatterns = {"/thongke"})
public class ThongKeServlet extends HttpServlet {

    private PaymentDAO paymentDAO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ;
        PaymentDAO paymentDAO = new PaymentDAO();
        List<Order> orders = paymentDAO.getOrders();
        
        PaymentDAO pay = new PaymentDAO();
        String totalAmount = pay.TotalAll();
        
        PaymentDAO corder = new PaymentDAO();
        String countOrder = corder.CountOrder();
        
        PaymentDAO cordersid = new PaymentDAO();
        List<Order> countordersid = cordersid.countOrdersInDay();
        
        PaymentDAO pay1month = new PaymentDAO();
        List<Order> order1month = pay1month.getOrders1Month();
        
        PaymentDAO cordersid1m = new PaymentDAO();
        List<Order> countordersid1m = cordersid1m.countOrdersInDay1m();
        
        PaymentDAO corder1m = new PaymentDAO();
        String countOrder1m = corder1m.CountOrder1m();
        
        PaymentDAO pay1m = new PaymentDAO();
        String totalAmount1m = pay1m.TotalAll1m();
        
        
        request.setAttribute("total", totalAmount);
        request.setAttribute("orders", orders);
        request.setAttribute("cou", countOrder);
        request.setAttribute("coid", countordersid);
        request.setAttribute("order1m", order1month);
        request.setAttribute("coid1m", countordersid1m);
        request.setAttribute("cou1m", countOrder1m);
         request.setAttribute("total1m", totalAmount1m);
        request.getRequestDispatcher("thongke.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "ThongKeServlet";
    }
}
