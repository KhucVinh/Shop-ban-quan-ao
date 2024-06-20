package control;

import java.io.IOException;
import java.nio.file.Paths;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import dal.ProductDAO;
import model.Product;

/**
 * Servlet implementation class AddProduct
 */

@MultipartConfig
@WebServlet(name = "AddProduct", urlPatterns = { "/AddProduct" })
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		
		Part part = request.getPart("image");
		Part part2 = request.getPart("image2");
				
		String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                String description = request.getParameter("description");
                String color = request.getParameter("color");
                String size = request.getParameter("size");
                int cateid = Integer.parseInt(request.getParameter("cateid"));

                String realPath = request.getServletContext().getRealPath("/img");
                String image = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                String image2 = Paths.get(part2.getSubmittedFileName()).getFileName().toString();

                part.write(realPath+"/"+image);
                part2.write(realPath+"/"+image2);
        
        
                Product product = new Product();

                product.setName(name);
                product.setPrice(price);
                product.setImage(image);
                product.setDescription(description);
                product.setColor(color);
                product.setSize(size);
                product.setImage2(image2);
                product.setCateid(cateid);


                if(ProductDAO.addProduct(product)) {
                    RequestDispatcher rd = request.getRequestDispatcher("mnproduct.jsp");
                    rd.forward(request, response);
                }else {

                }
	}

}
