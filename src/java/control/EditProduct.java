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
 * Servlet implementation class EditProduct
 */
@WebServlet(name = "EditProduct", urlPatterns = { "/EditProduct" })
@MultipartConfig
public class EditProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProduct() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        Part part = request.getPart("image");
        Part part2 = request.getPart("image2");

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String image2 = request.getParameter("image2");
        int cateid = Integer.parseInt(request.getParameter("cateid"));

        String realPath = request.getServletContext().getRealPath("/img");
        
        if (image == null || image.trim().equals("")) { 
            Product oldProduct = ProductDAO.getProductById(id); 
            image = oldProduct.getImage(); 
        }
        
        if (image2 == null || image2.trim().equals("")) { 
            Product oldProduct = ProductDAO.getProductById(id);
            image2 = oldProduct.getImage2();
        }
        
        if (part != null && part.getSize() > 0) {
            image = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            part.write(realPath+"/"+image);
        }

        if (part2 != null && part2.getSize() > 0) { 
            image2 = Paths.get(part2.getSubmittedFileName()).getFileName().toString();
            part2.write(realPath+"/"+image2);
        }


        Product product = new Product();

        product.setId(id);
        product.setName(name);
        product.setPrice(price);
        product.setImage(image);
        product.setDescription(description);
        product.setColor(color);
        product.setSize(size);
        product.setImage2(image2);
        product.setCateid(cateid);

        if (ProductDAO.updateProduct(product)) {
            RequestDispatcher rd = request.getRequestDispatcher("mnproduct.jsp");
            rd.forward(request, response);
        } else {
            // Handle failure case
            response.getWriter().println("Update failed");

            // Log error message
            System.err.println("Failed to update product");
        }
    }
}
