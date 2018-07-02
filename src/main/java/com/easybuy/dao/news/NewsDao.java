package com.easybuy.dao.news;

import java.util.List;



import com.easybuy.pojo.News;
import com.easybuy.pojo.Pages;


public interface NewsDao {
	/**
	 * 获取所有新闻数量
	 */
	
	public int getTotalCount() ;
	/**
	 * 查询所有新闻(分页查询)
	 */
	
	public List<News> getPagesNewsList(Pages pages) ;
	/**
	 *查询指定新闻
	 */
	
	public News findnews(News news);
	/**
	 * 添加新闻
	 */
	public int addNews(News news);
}
