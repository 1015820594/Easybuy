package com.easybuy.control;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.easybuy.pojo.Product;
import com.easybuy.service.product.ProductServer;

@Controller
public class ProAddControl implements ServletContextAware{
	@Autowired
	private ProductServer proServer ;
	private ServletContext application;
	
	@RequestMapping("/addProduct")
	public ModelAndView addProduct(Product product,MultipartFile[] files,ModelAndView model){
		//获得绝对路径
		String fileName = UUID.randomUUID().toString();
		product.setFileName(fileName);
		String path = application.getRealPath("/static/files");
		List<String> ext = Arrays.asList("image/jpeg","image/gif","image/png");
		if(files!=null && files.length>0) {
			for (MultipartFile file : files) {
				if(!file.isEmpty() && ext.contains(file.getContentType())) {
					File df = new File(path,fileName);
					try {
						file.transferTo(df);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
			}
			if (proServer.addpro(product)) {
				model.setViewName("pages/Member_Prolist");
			}else{
				model.setViewName("index");
			}
			
			
		}
		
		return model;
	}
	
	@RequestMapping("/upProduct")
	public ModelAndView upProduct(Product product,MultipartFile[] files,ModelAndView model){
		//获得绝对路径
		String path = application.getRealPath("/static/files");
		List<String> ext = Arrays.asList("image/jpeg","image/gif","image/png");
		if(files!=null && files.length>0) {
			for (MultipartFile file : files) {
				if(!file.isEmpty() && ext.contains(file.getContentType())) {
					String fileName = UUID.randomUUID().toString();
					product.setFileName(fileName);
					File df = new File(path,fileName);
					try {
						file.transferTo(df);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
		if (proServer.upPro(product)) {
			model.setViewName("redirect:pages/Member_Prolist.jsp");
		}else{
			model.setViewName("redirect:pages/index.jsp");
		}
		return model;
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.application = servletContext;				
	}
}
