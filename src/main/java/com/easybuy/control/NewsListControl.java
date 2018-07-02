package com.easybuy.control;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.easybuy.pojo.News;
import com.easybuy.pojo.Pages;
import com.easybuy.service.news.NewsServer;

@Controller
public class NewsListControl {
	@Autowired
	private NewsServer newsServer ;
	@RequestMapping("/findnews")
	@ResponseBody
	public String findnews(News news) {
		news = newsServer.findnews(news);
		String newsHtml = ("<p></p><div class='mem_t'>"+news.getTitle()+"</div>"
				+ "<table border='1' class='mem_tab' style='width:870px; margin-top:10px;' cellspacing='0' cellpadding='0'><tr><td><p>"+news.getContent()+"</p></td></tr></table>");
		return newsHtml;
	}
	
	@RequestMapping("/findPageNews")
	@ResponseBody
	public Pages findPageNews(Pages pages){
		newsServer.findPageNews(pages);
		return pages;
	}
	
	@RequestMapping("/addNews")
	public ModelAndView addNews(News news,ModelAndView model){
		if(newsServer.addNews(news)){
			model.setViewName("redirect:Member_newsList.jsp");
		}else{
			model.setViewName("redirect:pages/index.jsp");
		}
		return model;
	}
}
