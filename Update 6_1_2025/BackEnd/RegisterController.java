package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import model.Account;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private AccountDAO accountDAO = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("contentPage", "register.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("base.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");
        // Lấy giá trị userID từ request (có thể lấy giá trị này từ database hoặc từ một nguồn nào đó)
        int role = Integer.parseInt(request.getParameter("user-id")); // hoặc từ một nguồn tự động sinh ra

        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Mật khẩu không khớp!");
            doGet(request, response);
            return;
        }

        // Tạo đối tượng Account mới và thiết lập giá trị cho các thuộc tính
        Account account = new Account();
        account.setUsername(username);
        account.setEmail(email);
        account.setAddress(address);
        account.setPassword(password);
        account.setRole(role); // Thiết lập userID

        // Gọi phương thức registerUser từ AccountDAO để lưu thông tin người dùng
        boolean isRegistered = accountDAO.registerUser(account);

        if (isRegistered) {
            response.sendRedirect("login");
        } else {
            request.setAttribute("errorMessage", "Đăng ký thất bại. Vui lòng thử lại!");
            doGet(request, response);
        }
    }

}
