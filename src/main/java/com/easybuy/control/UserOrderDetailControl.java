package com.easybuy.control;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.OrderDetail;
import com.easybuy.service.orderdetail.OrderDetailServer;
@Controller
public class UserOrderDetailControl {
	@Autowired
	private OrderDetailServer orderDetailServer ;
	private List<OrderDetail> list;
	@RequestMapping("/addorderDetail")
	@ResponseBody
	public void addorderDetail(OrderDetail orderDetail){
		orderDetailServer.addorderDetail(orderDetail);
	}
	@RequestMapping("/findorderDetail")
	@ResponseBody
	public List<OrderDetail> findorderDetail(int orderId){
		list = orderDetailServer.findorderDetail(orderId);
		return list;
	}
}
