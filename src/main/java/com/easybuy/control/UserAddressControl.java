package com.easybuy.control;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Address;
import com.easybuy.service.address.AddressServer;


@Controller
public class UserAddressControl {
	@Autowired
	private AddressServer addressServer ;
	private List<Address> list ;
	@RequestMapping("/findAddress")
	@ResponseBody
	public List<Address> findAddress(Address address,HttpSession session){
		list = addressServer.findAddress(address);
		return list;
	}
	@RequestMapping("/addAddress")
	@ResponseBody
	public void addAddress(Address address){
		address.setCreateTime(new Date());
		addressServer.addAddress(address);
	}
}
