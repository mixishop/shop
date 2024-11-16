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
}
