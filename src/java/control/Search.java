/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dal.DAO;
import dal.DAOCategory;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author DELL
 */
@WebServlet(name = "Search", urlPatterns = {"/search"})
public class Search extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Search</title>");  
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Search at " + request.getContextPath () + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
       

        String[] pp = {"$0 - $10",
            "$10 - $20",
            "$20 - $30",
            "$30 - $50",
            "$50 - $100",
            "$100 - $500"};
        boolean[] pb = new boolean[pp.length + 1];
         String txtSearch = request.getParameter("txt");
        DAO dao = new DAO();
        DAOCategory c = new DAOCategory();
        List<Product> list = dao.searchByName(txtSearch);
        List<Product> products = new ArrayList<>();
        List<Category> listC = c.getAllCategory();
        List<String> listcolor = dao.getAllColor();
        boolean[] colo = new boolean[listcolor.size() + 1];
        String[] price = request.getParameterValues("price");
        String[] color = request.getParameterValues("color");
        if (color != null) {
            List<Product> temp = new ArrayList<>();
            for (int i = 0; i < listcolor.size(); i++) {
                if (Arrays.asList(color).contains(String.valueOf(i))) {
                    String getcolor = listcolor.get(i);
                    temp = dao.getProductByColor(getcolor);
                    products.addAll(temp);
                    colo[i] = true;
                }
            }
        }

        if (price != null) {
            double from = 0, to = 0;
            for (int i = 0; i < price.length; i++) {
                List<Product> temp = new ArrayList<>();
                if (price[i].equals("0")) {
                    from = 0;
                    to = 10;
                    products = dao.getProductByPrice(from, to);
                    pb[0] = true;
                }
                if (price[i].equals("1")) {
                    from = 10;
                    to = 20;
                    temp = dao.getProductByPrice(from, to);
                    products.addAll(temp);
                    pb[1] = true;

                }
                if (price[i].equals("2")) {
                    from = 20;
                    to = 30;
                    temp = dao.getProductByPrice(from, to);
                    products.addAll(temp);
                    pb[2] = true;

                }
                if (price[i].equals("3")) {
                    from = 30;
                    to = 50;
                    temp = dao.getProductByPrice(from, to);
                    products.addAll(temp);
                    pb[3] = true;

                }
                if (price[i].equals("4")) {
                    from = 50;
                    to = 100;
                    temp = dao.getProductByPrice(from, to);
                    products.addAll(temp);
                    pb[4] = true;

                }
                if (price[i].equals("5")) {
                    from = 100;
                    to = 500;
                    temp = dao.getProductByPrice(from, to);
                    products.addAll(temp);
                    pb[5] = true;

                }
            }
        }
        if (price == null && txtSearch == null && color == null) {

            products = dao.getTop8();

        }

        request.setAttribute("pr", list);
        request.setAttribute("listC", listC);
        request.setAttribute("txts", txtSearch);
        request.setAttribute("prs", products);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        request.setAttribute("listcolor", listcolor);
        request.setAttribute("colo", colo);
        request.getRequestDispatcher("women1.jsp").forward(request, response);
    }

    private boolean ischeck(int d, int[] id) {
        if (id == null) {
            return false;

        } else {
            for (int i = 0; i < id.length; i++) {
                if (id[i] == d) {
                    return true;

                }
            }
            return false;
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





