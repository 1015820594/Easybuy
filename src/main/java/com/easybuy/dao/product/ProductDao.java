package com.easybuy.dao.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;



public interface ProductDao {
		/**
		 * 查找分类一下的商品
		 * @param id1
		 * @param page
		 * @return
		 */
		public List<Product> findProduct1(@Param("id")int id1,@Param("pages")Pages page);
		/**
		 * 查找?级分类下的商品数量
		 */
		
		public int getProduct1Count(@Param("id1")Integer id1,@Param("id2")Integer id2,@Param("id3")Integer id3);
		/**
		 * 查找指定商品
		 */
		
		public Product getProduct(int pid);
		/**
		 * 查找所有商品(分页查询)
		 */
		
		public List<Product> getPagesProductList(Pages pages) ;
		/**
		 * 获取所有商品总数
		 */
		
		public int getTotalCount() ;
		/**
		 * 获取一级分类下的商品
		 */
		public List<Product> findProductById1(Integer id1) ;
		/**
		 * 寻找某一级分类下的商品(分页查询)
		 */
		public List<Product> findprobyCategoryLevel(@Param("categoryLevel2")Integer categoryLevel2,@Param("categoryLevel3")Integer categoryLevel3,@Param("pages")Pages pages);
		/**
		 * 删除某一商品
		 */
		public int delpro(Product product);
		/**
		 * 添加商品
		 */
		public int addpro(Product product);
		/**
		 * 更新商品
		 * @param product
		 * @return
		 */
		public int upPro(Product product);
}
