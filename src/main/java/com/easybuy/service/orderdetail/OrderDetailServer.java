package com.easybuy.service.orderdetail;

import java.util.List;

import com.easybuy.pojo.OrderDetail;


public interface OrderDetailServer {
	/**
	 * ���ɶ�������
	 */
	public int addorderDetail(OrderDetail orderDetail);
	/**
	 * ��ѯ��������
	 */
	public List<OrderDetail> findorderDetail(int orderId);
}
