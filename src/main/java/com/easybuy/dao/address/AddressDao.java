
package com.easybuy.dao.address;

import java.util.List;



import com.easybuy.pojo.Address;


public interface AddressDao {
	/**
	 * ��ѯ��ַ
	 */
	
	public List<Address> findAddress(Address address);
	/**
	 * ��ӵ�ַ
	 */
	
	public void addAddress(Address address);
}
