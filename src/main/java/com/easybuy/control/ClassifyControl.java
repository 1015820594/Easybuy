package com.easybuy.control;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Pages;
import com.easybuy.pojo.ProductCategory;
import com.easybuy.service.productcategory.CategoryServer;
import com.easybuy.util.Result;

@Controller
public class ClassifyControl {
	@Autowired
	private CategoryServer categoryServer ;
	private Result result = new Result();
	@RequestMapping(value="/pcpage")
	@ResponseBody
	public Pages pcpage(Pages pages) {
		pages = categoryServer.findPageCategory(pages);
		return pages;
	}
	@RequestMapping("/delClassify")
	@ResponseBody
	public String delClassify(ProductCategory category,HttpSession session){
		if (categoryServer.delcategory(category)) {
			result.setMessage("删除成功");
		} else {
			result.setMessage("删除失败,可能由于该分类底下仍有分类或商品,请先删除其子级分类和商品");
		}
		return result.getMessage();
	}
}
