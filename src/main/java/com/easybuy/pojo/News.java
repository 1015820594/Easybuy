package com.easybuy.pojo;


import java.io.Serializable;
import java.util.Date;


public class News implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int nid;
	private String title;
	private String content;
	private Date createTime;
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
