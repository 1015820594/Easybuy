package com.easybuy.pojo;

import java.io.Serializable;
import java.util.Date;


public class Address implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int uaid;
	public int getUaid() {
		return uaid;
	}
	public void setUaid(int uaid) {
		this.uaid = uaid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public int getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(int isDefault) {
		this.isDefault = isDefault;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private int userId;
	private String address;
	private Date createTime;
	private int isDefault;
	private String remark;


}
