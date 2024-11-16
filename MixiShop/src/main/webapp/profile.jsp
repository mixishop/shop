<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row" style="width: 100%">
	<div class="col-lg-6">
		<div class="profile text-center">
			<div class="avatar mb-3"
				style="position: relative; width: 200px; height: 200px; margin: 0 auto; border-radius: 50%; overflow: hidden; background: #f0f0f0;">
				<img id="avatarImg" src="<c:url value='/images/noAvatar.png'/>"
					alt="Avatar"
					style="width: 100%; height: 100%; object-fit: cover; border: 1.4px solid black;">
			</div>

			<div class="info">
				<p class="username fs-4 fw-bold">@{{ user.username }}</p>
				<p class="password text-muted">Mật khẩu: *****</p>
				<p class="email text-dark">Email: {{ user.email }}</p>
			</div>
		</div>
	</div>

	<div class="col-lg-6">
		<div class="box-element">
			<a class="btn btn-outline-dark" href="cart">&#x2190;
				Trở về giỏ hàng</a>
			<hr>
			<h3>Tóm tắt đơn hàng</h3>
			<hr>

			{% for item in items %}
			<div class="cart-row">
				<div style="flex: 2">
					<img class="row-image" src="{{ item.product.ImageURL }}">
				</div>
				<div style="flex: 2">
					<p>{{ item.product.name }}</p>
				</div>
				<div style="flex: 1">
					<p>{{ item.product.price | intcomma }} VNĐ</p>
				</div>
				<div style="flex: 1">
					<p>x{{ item.quantity }}</p>
				</div>
			</div>
			{% endfor %}

			<h5>Số lượng sản phẩm: {{ order.getCartItems }}</h5>
			<h5>Tổng tiền: {{ order.getCartTotal | intcomma }} VNĐ</h5>
		</div>
	</div>
</div>