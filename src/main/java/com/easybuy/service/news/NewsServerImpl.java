package com.easybuy.service.news;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.news.NewsDao;
import com.easybuy.pojo.News;
import com.easybuy.pojo.Pages;

@Service
@Transactional
public class NewsServerImpl implements NewsServer{
	@Autowired
	private NewsDao newsDao;
	List<News>  list = null;
	//查找所有新闻(分页查询)
	@Override
	public void findPageNews(Pages pageObj) {
			int totalCount = newsDao.getTotalCount();
			pageObj.setTotalCountl(totalCount);
			List<News> newsList = newsDao.getPagesNewsList(pageObj);
			pageObj.setList(newsList);
	}
	
	//查找指定新闻
	@Override
	public News findnews(News news){
			return newsDao.findnews(news);
	}
	
	/**
	 * 添加新闻
	 */
	@Override
	public boolean addNews(News news) {
		if(newsDao.addNews(news)==1){
			return true;
		}
		return false;
	}
}
