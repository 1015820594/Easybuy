package com.easybuy.dao.order;

import java.util.List;



import com.easybuy.pojo.Order;


public interface OrderDao {
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
