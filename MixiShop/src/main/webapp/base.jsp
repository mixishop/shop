
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value='/images/favicon.ico.jpg'/>" rel="icon"
	type="image/x-icon">
<!-- CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="<c:url value='/css/styles.css'/>" rel="stylesheet">
<link href="<c:url value='/css/all.min.css'/>" rel="stylesheet">
<link href="<c:url value='/css/main.css'/>" rel="stylesheet">
<link href="<c:url value='/css/owl.carousel.min.css'/>" rel="stylesheet">

<!-- JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
	integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<script src="<c:url value='/js/myscript.js'/>"></script>
<script src="<c:url value='/js/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/js/all.min.js'/>"></script>
<title>MixiShop</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-1f6FWjtvKlL3VSY6eYVp8AGMczlAA4y7o2Xf9KO6S+4uBQsQYfiNd/qosn9fWejd46TqlFRCr8DKZQ8TEw0GQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<!-- HEADER MENU -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top">
		<div class="container-fluid">
			<button class="d-block d-md-none" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand mx-sm-auto mx-lg-0" href="home"> <img
				src="<c:url value='/images/logo-mixi.webp'/>" width="100"
				height="50" />
			</a>
			<div class="d-block d-md-none" style="margin-right: 14px;">
				<a href="cart"><img id="cart-icon"
					src="<c:url value='/images/cart.png'/>" alt="Giỏ hàng"></a>
				<p id="cart-total" style="margin-right: 18px; margin-top: 20px;">0</p>
			</div>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="introduce">Giới
							thiệu</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Sản phẩm <img
							src="https://theme.hstatic.net/200000881795/1001243022/14/menu_icon_3.png?v=137"
							alt="Sản phẩm" style="width: 20px; height: 20px" />
					</a>
						<ul class="dropdown-menu">
							<c:if test="${not empty listCategory}">
								<c:forEach var="category" items="${listCategory}">
									<li><a class="dropdown-item"
										href="category?id=${category.id}">${category.name}</a></li>
								</c:forEach>
							</c:if>
							<c:if test="${empty listCategory}">
								<li><a class="dropdown-item" href="home">Không có danh mục
										nào</a></li>
							</c:if>
						</ul></li>


					<li class="nav-item"><a class="nav-link" href="contact">Liên
							hệ</a></li>
				</ul>
				<form class="d-flex" role="search" method="GET" action="search">
					<input class="form-control me-2" type="search"
						placeholder="Tìm kiếm" aria-label="Search" name="searched">
					<button class="btn btn-outline-info" type="submit">Tìm</button>
				</form>

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<!-- USER -->
					<div>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> MixiGaming </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="profile">Trang cá
										nhân</a></li>
								<li><a class="dropdown-item" href="checkout">Đơn hàng</a></li>
								<li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
							</ul></li>
					</div>

					<!-- CUSTOMER -->
					<div class="d-flex flex-lg-row flex-column">
						<li class="nav-item"><a class="nav-link" href="login">Đăng
								nhập</a></li>
						<li class="nav-item"><a class="nav-link" href="register">Đăng
								ký</a></li>
					</div>

				</ul>

			</div>
			<div class="d-none d-md-block" style="margin-right: 14px;">
				<a href="cart"><img id="cart-icon"
					src="<c:url value='/images/cart.png'/>" alt="Giỏ hàng"></a>
				<p id="cart-total" style="margin-right: 18px; margin-top: 20px;">0</p>
			</div>
		</div>
	</nav>

	<br>
	<br>
	<br>
	<br>

	<jsp:include page="${contentPage}" />

	<footer class="container-fluid bg-info text-center p-2 mt-5">
		<br>
		<div class="mid-footer">
			<div class="container">
				<div class="row">
					<!-- Cột thông tin liên hệ -->
					<div class="col-lg-4 col-sm-12">
						<div class="footer-block footer-click">
							<div class="" style="margin-bottom: 1rem;">
								<div class="single-contact">
									<div class="content">
										<i class="fa fa-map-marker-alt"></i> Địa chỉ: <span>Yên
											Lãng, Hà Nội</span>
									</div>
								</div>
							</div>
							<div class="" style="margin-bottom: 1rem;">
								<div class="single-contact">
									<div class="content">
										<i class="fa fa-mobile-alt"></i> Số điện thoại: <a
											class="link" title="0822221992" href="tel:0822221992"
											style="text-decoration: none;">0822221992</a>
									</div>
								</div>
							</div>
							<div class="" style="margin-bottom: 1rem;">
								<div class="single-contact">
									<div class="content">
										<i class="fa fa-envelope"></i> Email: <a
											title="Mixiishop@gmail.com" class="link"
											href="mailto:Mixiishop@gmail.com"
											style="text-decoration: none;">Mixiishop@gmail.com</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Chính sách -->
					<div class="col-lg-4 col-sm-12">
						<div class="footer-block footer-click">
							<h3 class="footer-title title-menu clicked">
								CHÍNH SÁCH <i class="fa fa-angle-down d-md-none d-inline-block"></i>
							</h3>
							<ul class="list-menu toggle-mn"
								style="list-style-type: none; padding-left: 0;">
								<li class="li_menu" style="margin: 0;"><a class="link"
									href="home" title="Trang chủ" style="text-decoration: none;">Trang
										chủ</a></li>
								<li class="li_menu" style="margin: 0;"><a class="link"
									href="introduce" title="Giới thiệu"
									style="text-decoration: none;">Giới thiệu</a></li>
								<li class="li_menu" style="margin: 0;"><a class="link"
									href="contact" title="Liên hệ" style="text-decoration: none;">Liên
										hệ</a></li>
								<li class="li_menu" style="margin: 0;"><a class="link"
									href="checkout" title="Kiểm tra đơn hàng"
									style="text-decoration: none;">Kiểm tra đơn hàng</a></li>
							</ul>
						</div>
					</div>

					<!-- Hỗ trợ khách hàng -->
					<div class="col-lg-4 col-sm-12">
						<div class="footer-block footer-click">
							<h3 class="footer-title title-menu clicked">
								HỖ TRỢ KHÁCH HÀNG <i
									class="fa fa-angle-down d-md-none d-inline-block"></i>
							</h3>
							<ul class="list-menu toggle-mn"
								style="list-style-type: none; padding-left: 0;">
								<li class="li_menu" style="margin: 0;"><a class="link"
									href="policy" title="Chính sách bảo mật"
									style="text-decoration: none;">Chính sách bảo mật</a></li>
								<li class="li_menu" style="margin: 0;"><a class="link"
									href="terms" title="Điều khoản dịch vụ"
									style="text-decoration: none;">Điều khoản dịch vụ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<br>

				<!-- Logo và chứng nhận -->
				<div class="row">
					<div class="col-lg-6 col-sm-12">
						<img class="img-fluid"
							src="//theme.hstatic.net/200000881795/1001243022/14/logo_bct.png?v=137"
							width="350" height="50" alt="Logo bộ công thương">
					</div>
					<div class="col-lg-6 col-sm-12">
						<img class="img-fluid"
							src="//theme.hstatic.net/200000881795/1001243022/14/footer_trustbadge.png?v=137"
							alt="Phương thức thanh toán">
					</div>
				</div>
			</div>
		</div>
		<br>
	</footer>
</body>
</html>