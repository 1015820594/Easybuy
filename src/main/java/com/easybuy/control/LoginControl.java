package com.easybuy.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easybuy.pojo.User;
import com.easybuy.service.user.UserServer;

@Controller
public class LoginControl {
	@Autowired
	private UserServer userServer ;
	
	@RequestMapping("/login")
	public void login(User user,HttpSession session,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		User user2 = new User();
		user2 = userServer.login(user);
		if (user2!=null) {
			session.setAttribute("user", user2);
			out.print("success");
		}else{
			out.print("fail");
		}
		out.flush();
		out.close();
	}
}
