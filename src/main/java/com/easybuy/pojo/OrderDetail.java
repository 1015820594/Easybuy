package com.easybuy.pojo;


import java.io.Serializable;


public class OrderDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int odid;
	private int orderId;
	private int productId;
	public int getOdid() {
		return odid;
	}
	public void setOdid(int odid) {
		this.odid = odid;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getAllcost() {
		return allcost;
	}
	public void setAllcost(float allcost) {
		this.allcost = allcost;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private int quantity;
	private float allcost;
	private Product product;
}