package control;

import java.io.IOException;

import dal.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet(urlPatterns = {"/register"})
public class signupServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public signupServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String cfpassword = request.getParameter("cfpassword");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");

        if (password.length() >= 8 && password.equals(cfpassword)) {
            UserDao userDao = new UserDao();
            if (userDao.checkEmailExists(email)) {
                request.setAttribute("error2", "Loi dang ki: Email da ton tai");
                RequestDispatcher rd = request.getRequestDispatcher("dangki.jsp");
                rd.forward(request, response);
            } else {
                User u = new User(phone, email, password, cfpassword, fname, lname, 0);
                if (userDao.themTaiKhoan(u)) {
                    response.sendRedirect("women");
                } else {
                    request.setAttribute("error2", "So dien thoai da ton tai");
                    RequestDispatcher rd = request.getRequestDispatcher("dangki.jsp");
                    rd.forward(request, response);
                }
            }
        } else {
            request.setAttribute("error1", "Loi dang ki: Password khong hop le hoac khong trung khop");
            RequestDispatcher rd = request.getRequestDispatcher("dangki.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
//       request.getRequestDispatcher("view/dangki.jsp").forward(request, response);
        doGet(request, response);
    }

}
