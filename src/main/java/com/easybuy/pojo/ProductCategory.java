package com.easybuy.pojo;


import java.io.Serializable;
import java.util.List;



public class ProductCategory implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pcid;
	public int getPcid() {
		return pcid;
	}
	public void setPcid(int pcid) {
		this.pcid = pcid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getIconClass() {
		return iconClass;
	}
	public void setIconClass(String iconClass) {
		this.iconClass = iconClass;
	}
	public List<ProductCategory> getList() {
		return list;
	}
	public void setList(List<ProductCategory> list) {
		this.list = list;
	}
	public ProductCategory getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}
	public List<Product> getLp() {
		return lp;
	}
	public void setLp(List<Product> lp) {
		this.lp = lp;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String name;
	private int parentId;
	private int type;
	private String iconClass;
	private List<ProductCategory> list;
	private ProductCategory productCategory;
	private List<Product> lp;
}
