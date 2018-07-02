package com.easybuy.service.productcategory;

import java.util.List;

import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;
import com.easybuy.pojo.ProductCategory;


public interface CategoryServer {
	/**
	 * ��ѯ���з���
	 */
	public List<ProductCategory> findProductCategory();
	/**
	 * ��ѯһ������
	 */
	public List<ProductCategory> findProductCategory1();
	/**
	 * ��ѯ��������
	 */
	public List<ProductCategory> findProductCategory2(String id1);
	/**
	 * ��ѯ���з���(��ҳ��ѯ)
	 */
	public Pages findPageCategory(Pages pageObj);
	/**
	 * ����һ������id��ѯ��Ʒ
	 */
	public List<Product> findProductById1(Integer id1) ;
	/**
	 * 删除某一分类
	 */
	public boolean delcategory(ProductCategory category);
	
}
