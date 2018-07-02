package com.easybuy.service.address;

import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.address.AddressDao;
import com.easybuy.pojo.Address;

@Service
@Transactional
public class AddressServerImpl implements AddressServer{
	@Autowired
	private AddressDao addressDao;
	
	/**
	 * ��ѯ��ַ
	 */
	@Override
	public List<Address> findAddress(Address address) {
			return addressDao.findAddress(address);
	}
	/**
	 * ��ӵ�ַ
	 */

	@Override
	public void addAddress(Address address) {
		
		
		addressDao.addAddress(address);
		
	}

}
