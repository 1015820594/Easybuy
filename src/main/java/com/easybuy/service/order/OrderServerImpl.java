package com.easybuy.service.order;


import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.order.OrderDao;
import com.easybuy.pojo.Order;

@Service
@Transactional
public class OrderServerImpl implements OrderServer{

	@Autowired
	private OrderDao orderDao;
	
	/**
	 * ���ɶ���
	 */
	@Override
	public int addorder(Order order) {
			return orderDao.addorder(order);	
	}
	/**
	 * ��ѯ�û�����
	 */
	@Override
	public List<Order> findorder(int userId) {
			return orderDao.findorder(userId);
	}
	/**
	 * ��ѯ�����û�����
	 */
	
	@Override
	public List<Order> findorderList() {
			return orderDao.findorderList();
	}

}
