package com.easybuy.service.news;

import com.easybuy.pojo.News;
import com.easybuy.pojo.Pages;


public interface NewsServer {
	/**
	 * 查询所有新闻(分页查询)
	 * @param pageObj
	 */
	public void findPageNews(Pages pageObj) ;
	/**
	 *查询指定新闻
	 * @param pageObj
	 */
	public News findnews(News news);
	/**
	 * 添加新闻
	 */
	public boolean addNews(News news);
}
