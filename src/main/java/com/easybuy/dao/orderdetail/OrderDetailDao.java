package com.easybuy.dao.orderdetail;

import java.util.List;


import com.easybuy.pojo.OrderDetail;


public interface OrderDetailDao {
	/**
	 * ���ɶ�������
	 */
	
	public int addorderDetail(OrderDetail orderDetail);
	/**
	 * ��ѯ��������
	 */
	
	public List<OrderDetail> findorderDetail(int orderId);
}
