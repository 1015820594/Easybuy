package com.easybuy.service.address;

import java.util.List;



import com.easybuy.pojo.Address;



public interface AddressServer {
	/**
	 * 查询地址
	 */
	public List<Address> findAddress(Address address);
	/**
	 * 添加地址
	 */
	public void addAddress(Address address);
}
