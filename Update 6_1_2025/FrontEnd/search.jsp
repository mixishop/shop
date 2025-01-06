<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container">
	<div class="row mb-4">
		<div class="col-12 text-center">
			<c:choose>
				<c:when test="${not empty listProductSearched}">
					<h2>Kết quả tìm kiếm sản phẩm:</h2>
				</c:when>
				<c:otherwise>
					<h2>Không tìm thấy sản phẩm.</h2>
					<img src="<c:url value='/images/cart_empty_background.webp'/>"
						class="img-fluid" alt="Không có sản phẩm" />
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div class="row">
		<c:forEach var="product" items="${listProductSearched}">
			<div class="col-lg-3 col-sm-6 d-flex justify-content-center mb-4">
				<div class="card" style="width: 18rem;">
					<img src="<c:url value='/images/${product.image}'/>"
						class="card-img-top" alt="${product.name}" height="300">
					<div class="card-body">
						<h6>
							<strong>${product.name}</strong>
						</h6>
						<hr>
						<form action="home" method="post">
							<input type="hidden" name="action" value="add" /> <input
								type="hidden" name="productCode" value="${product.id}" />
							<c:choose>
								<c:when test="${empty sessionScope.account}">
									<!-- Nếu chưa đăng nhập, hiển thị thông báo và chuyển hướng đến trang đăng nhập -->
									<a href="login"
										onclick="alert('Bạn chưa đăng nhập tài khoản! \nVui lòng đăng nhập trước khi mua sắm!');">
										<button type="button" class="btn btn-outline-success">Thêm
											vào giỏ hàng</button>
									</a>
								</c:when>
								<c:otherwise>
									<!-- Nếu đã đăng nhập, thêm vào giỏ hàng -->
									<button type="submit" class="btn btn-outline-success">Thêm
										vào giỏ hàng</button>
								</c:otherwise>
							</c:choose>

						</form>
						<a class="btn btn-outline-info" href="detail?id=${product.id}">Xem</a>
						<h4 class="text-center">
							<strong> <fmt:formatNumber value="${product.price}"
									type="number" groupingUsed="true" maxFractionDigits="0" /> VNĐ
							</strong>
						</h4>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>