package com.easybuy.pojo;


import java.util.List;



public class Pages {
	private int pageIndex=1; //��ǰҳ��
	private int totalCount; //�ܼ�¼��
	private int pageSize=10; //ÿҳ��¼��
	private int totalPages=0; //��ҳ��
	private int pageIndexCount;//��ǰҳ����¼��
	private List<?> list;
	
	public int getPageIndexCount() {
		return pageIndexCount;
	}

	public void setPageIndexCount(int pageIndexCount) {
		this.pageIndexCount = pageIndexCount;
	}

	
	
	public int getPageIndex() {
		if(totalPages==0)
			return 0;
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		if(pageIndex>0)
		this.pageIndex = pageIndex;
		this.pageIndexCount = (this.pageIndex-1)*this.pageSize;
	}

	public int getTotalCountl() {
		return totalCount;
	}

	public void setTotalCountl(int totalCountl) {
		if(totalCountl>0){
			this.totalCount = totalCountl;
			this.totalPages = this.totalCount%pageSize==0?(this.totalCount/pageSize):(this.totalCount/pageSize+1);
		}
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		if(pageSize>0)
			this.pageSize = pageSize;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
}
