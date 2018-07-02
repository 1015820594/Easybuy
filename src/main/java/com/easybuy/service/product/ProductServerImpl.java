package com.easybuy.service.product;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.product.ProductDao;
import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;



@Service
@Transactional
public class ProductServerImpl implements ProductServer{

	@Autowired
	private ProductDao productDao;
	Product product = null;
	List<Product> list = null;
	Pages page = null;
	boolean flag ;
	
	/**
	 * 查找分类一下的商品(分页查询)
	 */
	@Override
	public Pages findProduct1(int id1,String pageIndexstr,String pageSizestr) {
			page = new Pages();
			if(pageSizestr!=null)
				page.setPageSize(Integer.parseInt(pageSizestr));
			if(pageIndexstr!=null)
				page.setPageIndex(Integer.parseInt(pageIndexstr));
			page.setTotalCountl(productDao.getProduct1Count(id1,null,null));
			list = productDao.findProduct1(id1,page);
			page.setList(list);
			return page;
			
	}
	/**
	 * 获取商品总数
	 */
	@Override
	public int getProductCount(int id1){
			return productDao.getProduct1Count(id1,null,null);		
	}
	/**
	 * 查找指定商品
	 */
	@Override
	public Product getProduct(int id) {
			return productDao.getProduct(id);		
	}
	/**
	 * 寻找商品(分页查询)
	 */
	@Override
	public void findPageProduct(Pages pageObj) {
			int totalCount = productDao.getTotalCount();
			pageObj.setTotalCountl(totalCount);
			List<Product> userList = productDao.getPagesProductList(pageObj);
			pageObj.setList(userList);
	}
	
	/**
	 * 寻找某一级分类下的商品(分页查询)
	 */
	@Override
	public Pages findprobyCategoryLevel(Integer categoryLevel2, Integer categoryLevel3, String pageIndexstr,
			String pageSizestr) {
		page = new Pages();
		if(pageSizestr!=null)
			page.setPageSize(Integer.parseInt(pageSizestr));
		if(pageIndexstr!=null)
			page.setPageIndex(Integer.parseInt(pageIndexstr));
		if(categoryLevel2!=null){
			page.setTotalCountl(productDao.getProduct1Count(null,categoryLevel2,null));
		}
		if(categoryLevel3!=null){
			page.setTotalCountl(productDao.getProduct1Count(null,categoryLevel3,null));
		}
		list = productDao.findprobyCategoryLevel(categoryLevel2,categoryLevel3,page);
		page.setList(list);
		return page;
	}
	/**
	 * 删除某一商品
	 */
	@Override
	public boolean delpro(Product product) {
		if(productDao.delpro(product)==1){
			flag = true;
		}else{
			flag = false;
		}
		return flag;
	}
	/**
	 * 添加商品
	 */
	@Override
	public boolean addpro(Product product) {
		if(productDao.addpro(product)==1){
			flag = true;
		}else{
			flag = false;
		}
		return flag;
	}

	/**
	 * 更新商品
	 * @param product
	 * @return
	 */
	@Override
	public boolean upPro(Product product){
		if(productDao.upPro(product)==1){
			flag = true;
		}else{
			flag = false;
		}
		return flag;
	}

	
}
