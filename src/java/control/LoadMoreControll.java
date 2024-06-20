/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;

/**
 *
 * @author DELL
 */
@WebServlet(name = "LoadMoreControll", urlPatterns = {"/load"})
public class LoadMoreControll extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadMoreControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadMoreControll at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String amount = request.getParameter("exits");
        int iamount = Integer.parseInt(amount);
        DAO dao = new DAO();
        List<Product> list = dao.getNext8Product(iamount);
        PrintWriter out = response.getWriter();
        int count = list.size(); // Số lượng sản phẩm trả về từ câu truy vấn

        // Kiểm tra số lượng sản phẩm để trả về chính xác
        int productsToShow = Math.min(count, 8); // Giới hạn hiển thị 8 sản phẩm mỗi lần
        for (int i = 0; i < productsToShow; i++) {
            Product o = list.get(i);
            out.println("   <div class=\"product\">\n"
                    + "                        <div class=\"product-image\">\n"
                    + "                            <a href=\"product?id=" + o.getId() + "\"><img src=\"img1/" + o.getImage() + "\" style=\"max-width: 100%;\"></img></a>\n"
                    + "                            <a href=\"product?id=" + o.getId() + "\">\n"
                    + "                                <div class=\"quick-view\">\n"
                    + "                                    Quick view\n"
                    + "                                </div>\n"
                    + "                            </a>\n"
                    + "                            <div class=\"icon-heart\">\n"
                    + "                                <img src=\"./img1/icon-heart.png\" alt=\"save for later\" title=\"save for later\"\n"
                    + "                                     style=\"max-width: 100%;\">\n"
                    + "                            </div>\n"
                    + "\n"
                    + "                        </div>\n"
                    + "                        <div class=\"product-description\">\n"
                    + "                            <a href=\"product?id=" + o.getId() + "\">\n"
                    + "                                <div class=\"product-name\">\n"
                    + "                                    " + o.getName() + "\n"
                    + "                                </div>\n"
                    + "                            </a>\n"
                    + "                            <div class=\"product-price\">\n"
                    + "                                <div class=\"price\">\n"
                    + "                                    <span class=\"price-after-reduce\">$" + o.getPrice() + "</span>\n"
                    + "\n"
                    + "                                </div>\n"
                    + "                              \n"
                    + "                            </div>\n"
                    + "                            <div class=\"product-color\">\n"
                    + "                                <div class=\"block-color\" style=\"background: " + o.getColor() + ";\"></div>\n"
                    + "                            </div>\n"
                    + "                        </div>\n"
                    + "                    </div>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
