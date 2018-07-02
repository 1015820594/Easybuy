package com.easybuy.service.productcategory;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.product.ProductDao;
import com.easybuy.dao.productcategory.CategoryDao;
import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;
import com.easybuy.pojo.ProductCategory;

@Service
@Transactional
public class CategoryServerImpl implements CategoryServer{
	
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ProductDao productDao; 
	boolean flag ;
	private ProductCategory productCategory=null; 
	private ProductCategory productCategory2=null; 
	
	/**
	 * ��ѯһ������
	 */
	
	@Override
	public List<ProductCategory> findProductCategory1() {
			productCategory = new ProductCategory();
			productCategory.setType(1);
			return categoryDao.findCategory(productCategory);		
	}

	/**
	 * ��ѯ��������
	 */
	
	@Override
	public List<ProductCategory> findProductCategory2(String id1) {
			List<ProductCategory> list = null;
			int id = Integer.parseInt(id1);
			productCategory = new ProductCategory();
			productCategory.setParentId(id);
			productCategory.setType(2);
			//��ѯ��������
			list = categoryDao.findCategory(productCategory);
			//��ѯ��������
			for (ProductCategory pc : list) {
				productCategory2 = new ProductCategory();
				productCategory2.setParentId(pc.getPcid());
				productCategory2.setType(3);
				List<ProductCategory> ls = categoryDao.findCategory(productCategory2);
				pc.setList(ls);
			}
			return list;				
	}
	/**
	 * ��ѯ���з���(��ҳ��ѯ)
	 */
	
	@Override
	public Pages findPageCategory(Pages pageObj) {
			int totalCount = categoryDao.getTotalCount();
			pageObj.setTotalCountl(totalCount);
			List<ProductCategory> categoryList = categoryDao.getPagesCategoryList(pageObj);
			pageObj.setList(categoryList);
			return pageObj;
	}
	/**
	 * ��ѯ���з���
	 */
	
	@Override
	public List<ProductCategory> findProductCategory() {
		productCategory = new ProductCategory();
		productCategory.setType(1);
		List<ProductCategory> list = categoryDao.findCategory(productCategory);
		for (ProductCategory pc : list) {
			//����һ��id��ѯ��������
			productCategory2 = new ProductCategory();
			productCategory2.setParentId(pc.getPcid());
			productCategory2.setType(2);
			List<ProductCategory> ls = categoryDao.findCategory(productCategory2);
			pc.setList(ls);
			//����һ��id��ѯ6����Ʒ
			List<Product> lp = findProductById1(pc.getPcid());
			pc.setLp(lp);
		}
		return list;
	}
	/**
	 * ����һ������id��ѯ��Ʒ
	 */
	
	@Override
	public List<Product> findProductById1(Integer id1) {
			return productDao.findProductById1(id1);
	}
	/**
	 * 删除某一分类
	 */
	@Override
	public boolean delcategory(ProductCategory category) {
		int id = category.getPcid();
		if(categoryDao.findchildren(category)>0){
			flag = false;
		}else{
			if(productDao.getProduct1Count(id, null, null)>0||productDao.getProduct1Count(null,id, null)>0||productDao.getProduct1Count(null, null, id)>0){
				flag = false;
			}else{
				if(categoryDao.delcategory(category)==1){
					flag = true;
				}else{
					flag = false;
				}
			}
		}
		return flag;
	}
}
