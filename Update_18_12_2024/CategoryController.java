package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CategoryDAO;
import dao.ProductDAO;
import model.Cart;
import model.Category;
import model.Product;

@WebServlet("/category")
public class CategoryController extends HttpServlet {
	private ProductDAO productDAO = new ProductDAO();
	private CategoryDAO categoryDAO = new CategoryDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String categoryIDString = request.getParameter("id");
		int categoryID = Integer.parseInt(categoryIDString);
		
		List<Product> listProductByCategory = productDAO.getProductByCategory(categoryID);
		List<Category> listCategory = categoryDAO.getAllCategory();

		request.setAttribute("listProductByCategory", listProductByCategory);
		request.setAttribute("listCategory", listCategory);
		request.setAttribute("contentPage", "category.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("base.jsp");
		dispatcher.forward(request, response);
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            int productId = Integer.parseInt(request.getParameter("productCode"));
            Product product = productDAO.getProductByID(productId);
            
            // Lấy giỏ hàng từ session
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart(); // Nếu giỏ hàng chưa có, khởi tạo giỏ hàng mới
            }

            // Thêm sản phẩm vào giỏ hàng
            cart.addItem(product);

            // Lưu giỏ hàng vào session
            session.setAttribute("cart", cart);

            // Chuyển hướng đến trang giỏ hàng
            response.sendRedirect("cart");
        }
    }

	public static void main(String[] args) {
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> listCategory = categoryDAO.getAllCategory();

		if (listCategory.isEmpty()) {
			System.out.println("Không có danh mục nào");
		} else {
			System.out.println("Danh sách sản phẩm:");
			for (Category category : listCategory) {
				System.out.println();
				System.out.println("ID: " + category.getId());
				System.out.println("Name: " + category.getName());
			}
		}
	}
}
