package com.easybuy.service.buycar;

import java.util.List;

import com.easybuy.pojo.Buycar;


public interface BuyCarServer {
	/**
	 * ���빺�ﳵ
	 */
	public int addBuycar(Buycar buycar);
	/**
	 * ����ĳһ�û����ﳵ
	 */
	public List<Buycar>  findBuycar(Buycar buycar);
	/**
	 * ����ĳһ�û����ﳵĳһ��Ʒ����
	 */
	public int addpro(Buycar buycar);
	/**
	 * ����ĳһ�û����ﳵĳһ��Ʒ����
	 */
	public int minuspro(Buycar buycar);
	/**
	 * ɾ�����ﳵ��Ʒ
	 */
	public int delpro(Buycar buycar);
}
