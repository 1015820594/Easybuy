package com.easybuy.service.order;

import java.util.List;

import com.easybuy.pojo.Order;


public interface OrderServer {
	/**
	 * ���ɶ���
	 */
	public int addorder(Order order);
	/**
	 * ��ѯ�û�����
	 */
	public List<Order> findorder(int userId);
	/**
	 * ��ѯ�����û�����
	 */
	public List<Order> findorderList();
}
