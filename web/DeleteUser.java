/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.UserDAOMN;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name="DeleteUser", urlPatterns={"/deletemn"})
public class DeleteUser extends HttpServlet {
   

	private static final long serialVersionUID = 1L;
       
 
    public DeleteUser() {
        super();
       
    }

        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		// get phone from jsp
		String phone =request.getParameter("phone");
		// pass phone to dao 
		UserDAOMN user = new UserDAOMN();
		
		user.deleteUser(phone);
                response.sendRedirect("load");
		
//		if(UserDAO.deleteUser(user)) {
//			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
//		}else {
//			
//		}
	}

        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}




}
