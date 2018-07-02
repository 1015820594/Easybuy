package com.easybuy.pojo;


import java.io.Serializable;



public class Product implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pid;
	private String pname;
	private String description;
	private float price;
	private int stock;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getCategoryLevel1Id() {
		return categoryLevel1Id;
	}
	public void setCategoryLevel1Id(int categoryLevel1Id) {
		this.categoryLevel1Id = categoryLevel1Id;
	}
	public int getCategoryLevel2Id() {
		return categoryLevel2Id;
	}
	public void setCategoryLevel2Id(int categoryLevel2Id) {
		this.categoryLevel2Id = categoryLevel2Id;
	}
	public int getCategoryLevel3Id() {
		return categoryLevel3Id;
	}
	public void setCategoryLevel3Id(int categoryLevel3Id) {
		this.categoryLevel3Id = categoryLevel3Id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private int categoryLevel1Id;
	private int categoryLevel2Id;
	private int categoryLevel3Id;
	private String fileName;
	private int isDelete; 
	
}
