package com.easybuy.control;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Pages;
import com.easybuy.pojo.User;
import com.easybuy.service.user.UserServer;
import com.easybuy.util.Result;
@Controller
public class UserListControl {
	@Autowired
	private UserServer userServer ;
	private Result result = new Result();
	@RequestMapping("/findUser")
	@ResponseBody
	public User findUser(User user,HttpSession session){
		return userServer.findUser(user);
	}
	@RequestMapping("/findPageUser")
	@ResponseBody
	public Pages findPageUser(Pages pages,HttpSession session){
		userServer.findPageUser(pages);
		return pages;
	}
	@RequestMapping("/delUser")
	@ResponseBody
	public String delUser(User user,HttpSession session){
		if (userServer.delUser(user)) {
			result.setMessage("删除成功");
		} else {
			result.setMessage("删除失败");
		}
		return result.getMessage();
	}
	
	@RequestMapping("/upUser")
	@ResponseBody
	public String upUser(User user){
		if (userServer.upUser(user)) {
			result.setMessage("修改成功");
		} else {
			result.setMessage("修改失败");
		}
		return result.getMessage();
	}
}
