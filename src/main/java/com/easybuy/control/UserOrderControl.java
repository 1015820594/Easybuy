package com.easybuy.control;


import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Order;
import com.easybuy.service.order.OrderServer;
@Controller
public class UserOrderControl {
	@Autowired
	private OrderServer orderServer ;
	private List<Order> list;
	@RequestMapping("/addorder")
	@ResponseBody
	public int addorder(Order order,HttpSession session){
		order.setCreateTime(new Date());
		order.setSerialNumber(String.valueOf(UUID.randomUUID()));
		orderServer.addorder(order);
		return order.getOid();
	}
	@RequestMapping("/findorder")
	@ResponseBody
	public List<Order> findorder(Integer userId,HttpSession session){
		list = orderServer.findorder(userId);
		return list;
	}
	@RequestMapping("/findorderlist")
	@ResponseBody
	public List<Order> findorderlist(Integer userId,HttpSession session){
		list = orderServer.findorderList();
		return list;
	}
}
