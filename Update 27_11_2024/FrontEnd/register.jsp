<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<section class="vh-100" style="background-color: #eee;">
	<div class="container h-100">
		<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-lg-12 col-xl-11">
				<div class="card text-black" style="border-radius: 25px;">
					<div class="card-body p-md-5">
						<div class="row justify-content-center">
							<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

								<p class="text-center h2 fw-bold mb-5 mx-1 mx-md-4 mt-4">Đăng ký tài khoản</p>
								<p class="text-center fw-bold mb-5 mx-1 mx-md-4 mt-4">
									Bạn đã có tài khoản ? <a href="login">Đăng nhập tại đây</a>
								</p>

								<form class="mx-1 mx-md-4" method="POST" action="">
									<div class="d-flex flex-row align-items-center mb-4">
										<i class="fas fa-user fa-lg me-3 fa-fw"></i>
										<div data-mdb-input-init class="form-outline flex-fill mb-0">
											<label class="form-label" for="username">Tên người dùng:</label>
											<input type="text" id="username" class="form-control" name="username" required />
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-4">
										<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
										<div data-mdb-input-init class="form-outline flex-fill mb-0">
											<label class="form-label" for="email">Email của bạn:</label>
											<input type="email" id="email" class="form-control" name="email" required />
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-4">
										<i class="fas fa-map-marker-alt fa-lg me-3 fa-fw"></i>
										<div data-mdb-input-init class="form-outline flex-fill mb-0">
											<label class="form-label" for="address">Địa chỉ:</label>
											<input type="text" id="address" class="form-control" name="address" required />
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-4">
										<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
										<div data-mdb-input-init class="form-outline flex-fill mb-0">
											<label class="form-label" for="password">Mật khẩu:</label>
											<input type="password" id="password" class="form-control" name="password" required />
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-4">
										<i class="fas fa-key fa-lg me-3 fa-fw"></i>
										<div data-mdb-input-init class="form-outline flex-fill mb-0">
											<label class="form-label" for="confirm-password">Nhập lại mật khẩu:</label>
											<input type="password" id="confirm-password" class="form-control" name="confirm-password" required />
										</div>
									</div>

									<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
										<button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-success btn-lg">Đăng ký</button>
									</div>

								</form>

							</div>
							<div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
								<img src="<c:url value='/images/mixicity.png'/>" class="img-fluid" alt="Sample image">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
