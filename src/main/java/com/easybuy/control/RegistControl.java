package com.easybuy.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.User;
import com.easybuy.service.user.UserServer;

@Controller
public class RegistControl {
	@Autowired
	private UserServer userServer ;
	private String message;
	@RequestMapping("/regist")
	@ResponseBody
	public String regist(User user,HttpSession session){
		if (user.getLoginName()==null) {
			message="�û�������Ϊ��";
		}else if (user.getPassword()==null) {
			message="���벻��Ϊ��";
		}else if (user.getUserName()==null) {
			message="��ʵ��������Ϊ��";
		}else if (user.getSex()==0) {
			message="�Ա���Ϊ��";
		}else{
			message="成功";
			userServer.userAdd(user);
			session.setAttribute("user", user);
		}
		return message;
	}
}
