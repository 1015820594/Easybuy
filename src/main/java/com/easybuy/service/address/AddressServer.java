package com.easybuy.service.address;

import java.util.List;



import com.easybuy.pojo.Address;



public interface AddressServer {
	/**
	 * ��ѯ��ַ
	 */
	public List<Address> findAddress(Address address);
	/**
	 * ��ӵ�ַ
	 */
	public void addAddress(Address address);
}
