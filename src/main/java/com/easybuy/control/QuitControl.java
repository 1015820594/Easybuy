package com.easybuy.control;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class QuitControl {
	@RequestMapping("/Quit")
	public ModelAndView Quit(HttpSession session,HttpServletResponse response,ModelAndView model) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		session.invalidate();
		model.setViewName("redirect:index.jsp");
		return model;
	}
}
