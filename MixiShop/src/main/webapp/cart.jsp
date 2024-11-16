<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row" style="width: 100%">
        <div class="col-lg-12">
            {% if items|length == 0 %}
                <div class="text-center">
                    <h1>Chưa có đơn hàng</h1>
                    <img src="<c:url value='/images/cart_empty_background.webp'/>" class="img-fluid"/> <br>
                    <a class="btn btn-outline-dark" href="home">&#x2190; Tiếp tục mua hàng</a>
                </div>
            {% else %}
                <div class="box-element">
                    <a class="btn btn-outline-dark" href="home">&#x2190; Tiếp tục mua hàng</a>
                    <br><br>
                    <table class="table">
                        <tr>
                            <th><h5>Số lượng sản phẩm: <strong>{{ order.getCartItems }}</strong></h5></th>
                            <th><h5>Tổng tiền: <strong>{{ order.getCartTotal | intcomma }} VNĐ</strong></h5></th>
                            <th>
                                <a style="float:right; margin:5px;" class="btn btn-success" href="checkout">Hóa đơn</a>
                            </th>
                        </tr>
                    </table>
                </div>

                <br>
                <div class="box-element">
                    <div class="cart-row">
                        <div style="flex:2"></div>
                        <div style="flex:2"><strong>Sản phẩm</strong></div>
                        <div style="flex:1"><strong>Giá</strong></div>
                        <div style="flex:1"><strong>Số lượng</strong></div>
                        <div style="flex:1"><strong>Tổng</strong></div>
                    </div>

                    {% for item in items %}
                        <div class="cart-row">
                            <div style="flex:2"><img class="row-image" src="{{ item.product.ImageURL }}"></div>
                            <div style="flex:2"><p>{{ item.product.name }}</p></div>
                            <div style="flex:1"><p>{{ item.getTotal | intcomma }} VNĐ</p></div>
                            <div style="flex:1">
                                <p class="quantity">{{ item.quantity }}</p>
                                <div class="quantity">
                                    <img data-product="{{ item.product.id }}" data-action='add' class="chg-quantity update-cart" src="<c:url value='/images/arrow-up.png'/>">                      
                                    <img data-product="{{ item.product.id }}" data-action='remove' class="chg-quantity update-cart" src="<c:url value='/images/arrow-down.png'/>">
                                </div>
                            </div>
                            <div style="flex:1"><p>{{ item.getTotal | intcomma }} VNĐ</p></div>
                        </div>
                    {% endfor %}
                </div>
            {% endif %}
        </div>
    </div>