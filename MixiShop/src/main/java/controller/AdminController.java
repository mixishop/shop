package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy đối tượng người dùng từ session
        HttpSession session = request.getSession(false);
//        User user = (session != null) ? (User) session.getAttribute("user") : null;
//
//        // Kiểm tra xem người dùng đã đăng nhập và có quyền admin không
//        if (user == null || !user.isAdmin()) {
//            response.sendRedirect("index.jsp"); // Chuyển hướng đến trang từ chối truy cập
//            return;
//        }

        // Nếu là admin, hiển thị trang admin
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
        dispatcher.forward(request, response);
    }
}

