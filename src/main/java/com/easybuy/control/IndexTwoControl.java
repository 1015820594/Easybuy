package com.easybuy.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.easybuy.pojo.Pages;
import com.easybuy.pojo.ProductCategory;
import com.easybuy.service.news.NewsServer;
import com.easybuy.service.productcategory.CategoryServer;
@Controller
public class IndexTwoControl {
	@Autowired
	private CategoryServer categoryServer ;
	@Autowired
	private NewsServer newsServer;
	@RequestMapping("/index")
	public ModelAndView index(HttpSession session,ModelAndView mav,Pages pages) {
			List<ProductCategory> list = categoryServer.findProductCategory();
			pages.setPageSize(5);
			newsServer.findPageNews(pages);
			session.setAttribute("list", list);
			session.setAttribute("pages", pages);
			mav.setViewName("forward:/index.jsp");
			return mav;
	}
	
}
