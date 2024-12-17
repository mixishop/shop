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

@WebServlet("/detail")
public class DetailController extends HttpServlet {
	private ProductDAO productDAO = new ProductDAO();
	private CategoryDAO categoryDAO = new CategoryDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		int idProduct = Integer.parseInt(id);
		
		Product productDetail = productDAO.getProductByID(idProduct);
		List<Category> listCategory = categoryDAO.getAllCategory();

		request.setAttribute("productDetail", productDetail);
		request.setAttribute("listCategory", listCategory);
		request.setAttribute("contentPage", "detail.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("base.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    String action = request.getParameter("action");

	    if ("add".equals(action)) {
	        String productCode = request.getParameter("productCode");

	        if (productCode != null && !productCode.isEmpty()) {
	            int productId = Integer.parseInt(productCode);
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
	}

}
