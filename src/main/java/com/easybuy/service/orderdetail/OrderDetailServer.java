package com.easybuy.service.orderdetail;

import java.util.List;

import com.easybuy.pojo.OrderDetail;


public interface OrderDetailServer {
	/**
	 * 生成订单详情
	 */
	public int addorderDetail(OrderDetail orderDetail);
	/**
	 * 查询订单详情
	 */
	public List<OrderDetail> findorderDetail(int orderId);
}
