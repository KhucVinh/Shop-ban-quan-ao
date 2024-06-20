package control;

import dal.DAO;
import dal.DAOCategory;
import java.io.IOException;
import java.io.PrintWriter;

import dal.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Category;
import model.Product;
import model.User;

@WebServlet("/login")
public class loginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public loginServlet() {
        super();
    }

    private void redirectToPage(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, IOException {
        response.sendRedirect(page);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User u = new UserDao().layThongTinTaiKhoan(email);
        DAOCategory c = new DAOCategory();
        DAO p = new DAO();
        String[] pp = {"$0 - $10",
            "$10 - $20",
            "$20 - $30",
            "$30 - $50",
            "$50 - $100",
            "$100 - $500"};
        boolean[] pb = new boolean[pp.length + 1];
        List<String> listcolor = p.getAllColor();
        boolean[] colo = new boolean[listcolor.size() + 1];

        int count = p.countAllProdunt();
        List<Category> listC = c.getAllCategory();
        List<Product> list = p.getTop8();

        if (new UserDao().kiemTraDangNhap(email, password)) {

            HttpSession session = request.getSession();
            session.setAttribute("fname", u);
            redirectToPage(request, response, "women");

        } else {
            request.setAttribute("listC", listC);
            request.setAttribute("pr", list);
            request.setAttribute("count", count);
            request.setAttribute("pp", pp);
            request.setAttribute("pb", pb);
            request.setAttribute("listcolor", listcolor);
            request.setAttribute("colo", colo);
            request.setAttribute("error", "Email hoặc mật khẩu không chính xác!");
            RequestDispatcher rd = request.getRequestDispatcher("women1.jsp");
            rd.forward(request, response);

        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

}
