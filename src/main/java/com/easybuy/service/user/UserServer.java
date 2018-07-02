package com.easybuy.service.user;


import com.easybuy.pojo.Pages;
import com.easybuy.pojo.User;

public interface UserServer {
	
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
		public void findPageUser(Pages pageObj);
		/**
		 * ��ѯָ���û�
		 */
		public User findUser(User user);
		/**
		 * 删除用户
		 */
		public boolean delUser(User user);
		/**
		 * 修改用户
		 */
		public boolean upUser(User user);
}
