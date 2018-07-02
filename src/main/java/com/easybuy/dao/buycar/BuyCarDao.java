package com.easybuy.dao.buycar;

import java.util.List;



import com.easybuy.pojo.Buycar;



public interface BuyCarDao {
	/**
	 * 加入购物车
	 */
	
	public int addBuycar(Buycar buycar);
	/**
	 * 查询某一用户的购物车
	 */
	
	public List<Buycar> findAllBuycar(Buycar buycar);
	/**
	 * 查找某一用户购物车是否存在此商品
	 */
	
	public Buycar findBuycar(Buycar buycar);
	/**
	 * 加入购物车(商品已存在)
	 */
	public int upBuycar(Buycar buycar);
	/**
	 * 删除购物车商品
	 */
	
	public int delpro(Buycar buycar);

}
