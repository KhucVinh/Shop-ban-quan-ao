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
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author DELL
 */
@WebServlet(name="CategoryControll", urlPatterns={"/category"})
public class CategoryControll extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CategoryControll</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CategoryControll at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String cateid= request.getParameter("cid");
        DAO dao = new DAO();
        DAOCategory c= new DAOCategory();
        
        String[] pp = {"$0 - $10",
            "$10 - $20",
            "$20 - $30",
            "$30 - $50",
            "$50 - $100",
            "$100 - $500"};
        boolean[] pb = new boolean[pp.length + 1];
        List<String> listcolor = dao.getAllColor();
        boolean[] colo = new boolean[listcolor.size() + 1];
        List<Product> listc =  dao.getProductByCid(cateid);
        List<Category> listC = c.getAllCategory();
        
        
        
        
        request.setAttribute("prbc", listc);
        request.setAttribute("listC", listC);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        request.setAttribute("listcolor", listcolor);
        request.setAttribute("colo", colo);
        request.getRequestDispatcher("women1.jsp").forward(request, response);
               
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
