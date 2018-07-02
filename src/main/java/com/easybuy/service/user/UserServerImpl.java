


package com.easybuy.service.user;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easybuy.dao.user.UserDao;
import com.easybuy.pojo.Pages;
import com.easybuy.pojo.User;

@Service
@Transactional
public class UserServerImpl implements UserServer{
	@Autowired
	private UserDao userDao;
	List<User>  list = null;
	boolean flag ;

	
	//�û�ע��
	@Override
	public int userAdd(User user) {
			return userDao.userAdd(user);
	}
	//�û���¼
	@Override
	public User login(User user) {
			return userDao.login(user);
	}
	/**
	 * ��ѯ�����û�(��ҳ��ѯ)
	 */
	@Override
	public void findPageUser(Pages pageObj) {
			int totalCount = userDao.getTotalCount();
			pageObj.setTotalCountl(totalCount);
			List<User> userList = userDao.getPagesUserList(pageObj);
			pageObj.setList(userList);
	}
	/**
	 * ��ѯָ���û�
	 */
	@Override
	public User findUser(User user) {
		return userDao.findUser(user);
	}
	/**
	 * 删除用户
	 */
	@Override
	public boolean delUser(User user) {
			if(userDao.delUser(user)==1){
				flag = true;
			}else{
				flag = false;
			}
			return flag;
	}
	
	/**
	 * 修改用户
	 */
	@Override
	public boolean upUser(User user){
		if(userDao.upUser(user)==1){
			flag = true;
		}else{
			flag = false;
		}
		return flag;
	}

}
