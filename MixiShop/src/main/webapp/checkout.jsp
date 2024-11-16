<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row" style="width: 100%">
	<div class="col-lg-6">
		<div class="box-element" id="form-wrapper">
			<form id="form">
				<div id="user-info">
					<div class="form-field">
						<input required class="form-control" type="text" name="name"
							placeholder="Họ Tên...">
					</div>
					<div class="form-field">
						<input required class="form-control" type="email" name="email"
							placeholder="Email...">
					</div>
				</div>

				<div id="shipping-info">
					<hr>
					<p>Thông tin giao hàng:</p>
					<hr>
					<div class="form-field">
						<input class="form-control" type="text" name="address"
							placeholder="Địa chỉ...">
					</div>
					<div class="form-field">
						<input class="form-control" type="text" name="city"
							placeholder="Thành phố...">
					</div>
					<div class="form-field">
						<input class="form-control" type="text" name="state"
							placeholder="Tỉnh...">
					</div>
					<div class="form-field">
						<input class="form-control" type="text" name="mobile"
							placeholder="Số điện thoại...">
					</div>
					<div class="form-field">
						<input class="form-control" type="text" name="country"
							placeholder="Quốc gia...">
					</div>
				</div>

				<hr>
				<input id="form-button" class="btn btn-success w-100" type="submit"
					value="Tiếp tục">

			</form>
		</div>

		<br>
		<div class="box-element hidden" id="payment-info">
			<small>Tùy chọn Paypal</small>
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
					<img class="row-image" src="{{item.product.ImageURL}}">
				</div>
				<div style="flex: 2">
					<p>{{item.product.name}}</p>
				</div>
				<div style="flex: 1">
					<p>{{item.product.price | intcomma}} VNĐ</p>
				</div>
				<div style="flex: 1">
					<p>x{{item.quantity}}</p>
				</div>
			</div>
			{% endfor %}

			<h5>Số lượng sản phẩm: {{order.getCartItems}}</h5>
			<h5>Tổng tiền: {{order.getCartTotal | intcomma}} VNĐ</h5>
		</div>
	</div>
</div>