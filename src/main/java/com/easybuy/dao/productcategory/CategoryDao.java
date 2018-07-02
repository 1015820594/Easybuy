package com.easybuy.dao.productcategory;

import java.util.List;



import com.easybuy.pojo.Pages;
import com.easybuy.pojo.ProductCategory;



public interface CategoryDao {
	/**
	 * ��ѯ���з���
	 */
	
	public List<ProductCategory> findAllCategory();
	/**
	 * ��ѯ?������
	 */
	
	public List<ProductCategory> findCategory(ProductCategory productCategory);
	/**
	 * ��ѯ���з���(��ҳ��ѯ)
	 */
	
	public List<ProductCategory> getPagesCategoryList(Pages pages) ;
	/**
	 * ��ѯ��������
	 */
	
	public int getTotalCount() ;
	/**
	 * ��ѯ��������
	 */
	
	public String getName(int id);
	/**
	 * 查询分类底下是否有子级分类
	 * @param category
	 * @return
	 */
	public int findchildren(ProductCategory category);
	/**
	 * 删除用户
	 */
	public int delcategory(ProductCategory category);
}
