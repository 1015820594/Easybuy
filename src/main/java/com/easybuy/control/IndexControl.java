package com.easybuy.control;

import java.io.IOException;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;
import com.easybuy.pojo.ProductCategory;
import com.easybuy.service.product.ProductServer;
import com.easybuy.service.productcategory.CategoryServer;


@Controller
public class IndexControl {
	@Autowired
	private CategoryServer categoryServer ;
	@Autowired
	private ProductServer productServer ;
	private List<ProductCategory> list;
	@RequestMapping(value="/CategoryList1",method=RequestMethod.POST)
	@ResponseBody
	public List<ProductCategory> CategoryList1(HttpServletResponse response) throws IOException {
		list = categoryServer.findProductCategory1();
		return list;
	}
	
	@RequestMapping(value="/CategoryList2",method=RequestMethod.POST)
	@ResponseBody
	public List<ProductCategory> CategoryList2(String id,HttpServletResponse response) throws IOException {
		list = categoryServer.findProductCategory2(id);
		return list;
	}
	
	@RequestMapping(value="/List1",method=RequestMethod.POST)
	@ResponseBody
	public Pages List1(Integer id,String pageSize,String pageIndex) {
		Pages pages = new Pages();
		pages = productServer.findProduct1(id,pageIndex,pageSize);
		return pages;
	}
	@RequestMapping(value="/count1",method=RequestMethod.POST)
	@ResponseBody
	public int count1(Integer id,HttpServletResponse response) throws IOException {
		int count = productServer.getProductCount(id);
		return count;
	}
	@RequestMapping(value="/findproduct",method=RequestMethod.POST)
	@ResponseBody
	public Product findproduct(Integer id,HttpServletResponse response) throws IOException {
		Product product = productServer.getProduct(id);
		return product;
	}
	@RequestMapping(value="/List2")
	@ResponseBody
	public Pages List2(Integer id,String pageSize,String pageIndex){
		Pages pages = new Pages();
		pages = productServer.findprobyCategoryLevel(id,null,pageIndex,pageSize);
		return pages;
	}
	@RequestMapping(value="/List3")
	@ResponseBody
	public Pages List3(Integer id,String pageSize,String pageIndex){
		Pages pages = new Pages();
		pages = productServer.findprobyCategoryLevel(null,id,pageIndex,pageSize);
		return pages;
	}
}
