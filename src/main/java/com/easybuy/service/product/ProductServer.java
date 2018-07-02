package com.easybuy.service.product;


import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;


public interface ProductServer {
	/**
	 * 查找分类一下的商品(分页查询)
	 */
	public Pages findProduct1(int id1,String pageIndexstr,String pageSizestr);
	/**
	 * 获取商品总数
	 */
	public int getProductCount(int id1);
	/**
	 * 查找指定商品
	 */
	public Product getProduct(int id);
	/**
	 * 寻找商品(分页查询)
	 */
	public void findPageProduct(Pages pageObj);
	/**
	 * 寻找某一级分类下的商品(分页查询)
	 */
	public Pages findprobyCategoryLevel(Integer categoryLevel2,Integer categoryLevel3,String pageIndexstr,String pageSizestr);
	/**
	 * 删除某一商品
	 */
	public boolean delpro(Product product);
	/**
	 * 添加商品
	 */
	public boolean addpro(Product product);
	/**
	 * 更新商品
	 * @param product
	 * @return
	 */
	public boolean upPro(Product product);
}
