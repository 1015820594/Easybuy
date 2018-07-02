
package com.easybuy.dao.address;

import java.util.List;



import com.easybuy.pojo.Address;


public interface AddressDao {
	/**
	 * 查询地址
	 */
	
	public List<Address> findAddress(Address address);
	/**
	 * 添加地址
	 */
	
	public void addAddress(Address address);
}
