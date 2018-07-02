package com.easybuy.service.buycar;



import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.buycar.BuyCarDao;
import com.easybuy.pojo.Buycar;


@Service
@Transactional
public class BuyCarServerImpl implements BuyCarServer{
	@Autowired
	private BuyCarDao buyCarDao;
	private int result=0;
	private Buycar buycar2 = null;
	
	/**
	 * ���빺�ﳵ
	 */
	
	@Override
	public int addBuycar(Buycar buycar){
			buycar2 = buyCarDao.findBuycar(buycar);
			if(buycar2==null){
				result = buyCarDao.addBuycar(buycar);
			}else{
				buycar.setBid(buycar2.getBid());
				result = buyCarDao.upBuycar(buycar);
			}
			return result;
	}
	
	/**
	 * ����ĳһ�û����ﳵ
	 */
	
	@Override
	public List<Buycar> findBuycar(Buycar buycar) {
			return buyCarDao.findAllBuycar(buycar);
	}
	/**
	 * ����ĳһ�û����ﳵĳһ��Ʒ����
	 */
	
	@Override
	public int addpro(Buycar buycar) {
			buycar.setQuantity(1);
			return buyCarDao.upBuycar(buycar);
	}
	/**
	 * ����ĳһ�û����ﳵĳһ��Ʒ����
	 */
	
	@Override
	public int minuspro(Buycar buycar) {
			buycar.setQuantity(-1);
			buycar.setCost(buycar.getCost()*-1);
			return buyCarDao.upBuycar(buycar);
	}
	/**
	 * ɾ��ĳһ�û����ﳵĳһ��Ʒ
	 */
	
	@Override
	public int delpro(Buycar buycar) {
			
			
			return buyCarDao.delpro(buycar);
	}
	
}
