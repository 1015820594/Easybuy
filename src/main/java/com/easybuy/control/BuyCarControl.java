package com.easybuy.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easybuy.pojo.Buycar;
import com.easybuy.service.buycar.BuyCarServer;

@Controller
public class BuyCarControl {
		@Autowired
		private BuyCarServer buyCarServer ;
		private List<Buycar> list;
		private int result;
		
		@RequestMapping(value="/addbuycar",method=RequestMethod.POST)
		@ResponseBody
		public int addbuycar(Buycar buycar){
			result = buyCarServer.addBuycar(buycar);
			return result;
		}
		
		@RequestMapping(value="/findbuycar",method=RequestMethod.POST)
		@ResponseBody
		public List<Buycar> findbuycar(Buycar buycar) {
			list = new ArrayList<Buycar>();
			list = buyCarServer.findBuycar(buycar);
			return list; 
		}
		@RequestMapping(value="/add",method=RequestMethod.POST)
		@ResponseBody
		public String add(Buycar buycar) {
			result = buyCarServer.addpro(buycar);
			return getMessage(result);
		}
		
		@RequestMapping(value="/minus",method=RequestMethod.POST)
		@ResponseBody
		public String minus(Buycar buycar,HttpServletResponse response) throws IOException {
			result = buyCarServer.minuspro(buycar);
			return getMessage(result);
		}
		
		@RequestMapping(value="/del",method=RequestMethod.POST)
		@ResponseBody
		public String del(Buycar buycar,HttpServletResponse response) throws IOException {
			result = buyCarServer.delpro(buycar);
			return getMessage(result);
		}
		
		@RequestMapping(value="/delbuycar",method=RequestMethod.POST)
		@ResponseBody
		public String delbuycar(Buycar buycar,HttpServletResponse response) throws IOException {
			result = buyCarServer.delpro(buycar);
			return getMessage(result);
		}
		public String getMessage(int result){
			String message = "";
			if(result==0){
				message="����δ֪����";
			}else if(result==-1){
				message="����ʧ��";
			}else{
				message="�ɹ�";
			}
			return message;
		}
}
