package dao;

import model.Account;
import database.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AccountDAO {
	Connection connect = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	// Đồng bộ phương thức để tránh xung đột dữ liệu trong môi trường đa luồng
	public synchronized Account authenticateUser(String username, String password) {

		try {
			// Kết nối đến cơ sở dữ liệu
			connect = DatabaseConnection.getConnection();

			// Câu lệnh SQL kiểm tra thông tin đăng nhập
			String sql = "SELECT * FROM account WHERE username = ? AND password = ?";
			ps = connect.prepareStatement(sql);

			// Gán giá trị tham số
			ps.setString(1, username);
			ps.setString(2, password);

			// Thực thi truy vấn
			rs = ps.executeQuery();

			// Nếu tìm thấy tài khoản phù hợp
			if (rs.next()) {
				int id = rs.getInt("id");
				String email = rs.getString("email");
				String address = rs.getString("address");

				// Tạo và trả về đối tượng Account
				return new Account(id, username, password, email, address);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// Đóng kết nối và các tài nguyên
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (connect != null)
					connect.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// Trả về null nếu không tìm thấy tài khoản
		return null;
	}
}
