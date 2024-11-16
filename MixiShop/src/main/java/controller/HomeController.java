package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDAO;
import dao.ProductDAO;
import model.Category;
import model.Product;

@WebServlet("/home")
public class HomeController extends HttpServlet {
	private ProductDAO productDAO = new ProductDAO();
	private CategoryDAO categoryDAO = new CategoryDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Product> listProduct = productDAO.getAllProduct();
		List<Category> listCategory = categoryDAO.getAllCategory();

		request.setAttribute("listProduct", listProduct);
		request.setAttribute("listCategory", listCategory);
		
		request.setAttribute("contentPage", "home.jsp"); // Chỉ định trang con
		RequestDispatcher dispatcher = request.getRequestDispatcher("base.jsp");
		dispatcher.forward(request, response);
	}

	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAO();
		List<Product> listProduct = productDAO.getAllProduct();

		if (listProduct.isEmpty()) {
			System.out.println("Không có sản phẩm nào");
		} else {
			System.out.println("Danh sách sản phẩm:");
			for (Product product : listProduct) {
				System.out.println();
				System.out.println("ID: " + product.getId());
				System.out.println("Name: " + product.getName());
				System.out.println("Image: " + product.getImage());
				System.out.println("Price: " + product.getPrice() + " VNĐ");
			}
		}

		System.out.println();
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
