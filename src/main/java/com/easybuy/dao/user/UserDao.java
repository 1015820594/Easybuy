package com.easybuy.dao.user;

import java.util.List;



import com.easybuy.pojo.Pages;
import com.easybuy.pojo.User;


public interface UserDao {
	/**
	 * �û�ע��
	 */
	
	public int userAdd(User user);
	/**
	 * �û���¼
	 */
	
	public User login(User user);
	/**
	 * ��ѯ�����û�(��ҳ��ѯ)
	 */
	
	public List<User> getPagesUserList(Pages pages) ;
	/**
	 * ��ѯ�û�����
	 */
	
	public int getTotalCount() ;
	/**
	 * ��ѯָ���û�
	 */
	
	public User findUser(User user);
	/**
	 * 删除用户
	 */
	public int delUser(User user);
	/**
	 * 修改用户
	 */
	public int upUser(User user);
}
