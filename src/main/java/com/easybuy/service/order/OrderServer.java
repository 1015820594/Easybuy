package com.easybuy.service.order;

import java.util.List;

import com.easybuy.pojo.Order;


public interface OrderServer {
	/**
	 * 生成订单
	 */
	public int addorder(Order order);
	/**
	 * 查询用户订单
	 */
	public List<Order> findorder(int userId);
	/**
	 * 查询所有用户订单
	 */
	public List<Order> findorderList();
}
