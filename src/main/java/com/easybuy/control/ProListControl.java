package com.easybuy.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Pages;
import com.easybuy.pojo.Product;
import com.easybuy.service.product.ProductServer;
import com.easybuy.util.Result;

@Controller
public class ProListControl {
	@Autowired
	private ProductServer proServer ;
	private Product product;
	private Result result = new Result();
	@RequestMapping("/getProduct")
	@ResponseBody
	public Product getProduct(int id){
		product = proServer.getProduct(id);
		return product;
	}
	@RequestMapping("/findPageProduct")
	@ResponseBody
	public Pages findPageProduct(Pages pages){
		proServer.findPageProduct(pages);
		return pages;
	}
	@RequestMapping("/delpro")
	@ResponseBody
	public String delpro(Product product,HttpSession session){
		if (proServer.delpro(product)) {
			result.setMessage("删除成功");
		} else {
			result.setMessage("删除失败");
		}
		return result.getMessage();
	}
}
