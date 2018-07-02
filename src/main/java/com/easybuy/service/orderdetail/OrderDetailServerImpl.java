package com.easybuy.service.orderdetail;


import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.orderdetail.OrderDetailDao;
import com.easybuy.pojo.OrderDetail;

@Service
@Transactional
public class OrderDetailServerImpl implements OrderDetailServer{
	
	@Autowired
	private OrderDetailDao orderDetailDao;
	/**
	 * ���ɶ�������
	 */
	
	@Override
	public int addorderDetail(OrderDetail orderDetail) {
			return orderDetailDao.addorderDetail(orderDetail);
		
	}
	/**
	 * ��ѯ��������
	 */
	
	@Override
	public List<OrderDetail> findorderDetail(int orderId) {
			return orderDetailDao. findorderDetail(orderId);
	}
	
}
