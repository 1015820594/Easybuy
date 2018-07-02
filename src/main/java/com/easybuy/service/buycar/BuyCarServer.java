package com.easybuy.service.buycar;

import java.util.List;

import com.easybuy.pojo.Buycar;


public interface BuyCarServer {
	/**
	 * 加入购物车
	 */
	public int addBuycar(Buycar buycar);
	/**
	 * 查找某一用户购物车
	 */
	public List<Buycar>  findBuycar(Buycar buycar);
	/**
	 * 增加某一用户购物车某一商品数量
	 */
	public int addpro(Buycar buycar);
	/**
	 * 减少某一用户购物车某一商品数量
	 */
	public int minuspro(Buycar buycar);
	/**
	 * 删除购物车商品
	 */
	public int delpro(Buycar buycar);
}
