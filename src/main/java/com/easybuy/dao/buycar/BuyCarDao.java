package com.easybuy.dao.buycar;

import java.util.List;



import com.easybuy.pojo.Buycar;



public interface BuyCarDao {
	/**
	 * ���빺�ﳵ
	 */
	
	public int addBuycar(Buycar buycar);
	/**
	 * ��ѯĳһ�û��Ĺ��ﳵ
	 */
	
	public List<Buycar> findAllBuycar(Buycar buycar);
	/**
	 * ����ĳһ�û����ﳵ�Ƿ���ڴ���Ʒ
	 */
	
	public Buycar findBuycar(Buycar buycar);
	/**
	 * ���빺�ﳵ(��Ʒ�Ѵ���)
	 */
	public int upBuycar(Buycar buycar);
	/**
	 * ɾ�����ﳵ��Ʒ
	 */
	
	public int delpro(Buycar buycar);

}
