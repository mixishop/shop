<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container mt-5 mb-5">
	<div class="card">
		<div class="row g-0">
			<div class="col-md-4 border-end">
				<div class="d-flex flex-column justify-content-center">
					<div class="main_image">
						<img src="<c:url value='/images/${productDetail.image}'/>"
							id="main_product_image" width="100%">
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="p-5 right-side">
					<div class="d-flex justify-content-between align-items-center">
						<h2>${productDetail.name}</h2>
						<span class="heart"><i class='bx bx-heart'></i></span>
					</div>
					<h5>
						<fmt:formatNumber value="${productDetail.price}" type="number"
							groupingUsed="true" /> VNĐ
					</h5>

					<div class="ratings d-flex flex-row align-items-center">
						<span>(Tiết kiệm)</span>
					</div>
					<hr>
					<div class="mt-5">
						<span class="fw-bold">KHUYẾN MÃI - ƯU ĐÃI</span>
						<div class="colors">
							<ul id="marker">
								<li>Đồng giá ship toàn quốc 30k</li>
								<li>Hỗ trợ trả lời thắc mắc qua fanpage chính thức</li>
								<li>Khuyến mãi trực tiếp trên giá sản phẩm</li>
								<li>Đổi trả nếu sản phẩm lỗi bất kì</li>
							</ul>
						</div>
					</div>
					<br>
					<div>
						<h5>Hotline: 0822221992 (7:30 - 22:00)</h5>
					</div>
					<hr>
					<div class="buttons d-flex flex-row mt-5 gap-3">
						<form action="detail" method="post">
						    <input type="hidden" name="action" value="add" />
						    <input type="hidden" name="productCode" value="${productDetail.id}" />
						    <button type="submit" class="btn btn-outline-success">Thêm vào giỏ hàng</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
