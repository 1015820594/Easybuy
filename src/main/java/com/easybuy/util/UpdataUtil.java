package com.easybuy.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.View;

/**
 * 下载视图处理
 * @author tym
 *
 */
@Component
public class UpdataUtil implements View {
	
	@Override
	public String getContentType() {		
		return "application/x-msdownload;charset=UTF-8";
	}

	@Override
	public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String fileName = model.get("fileName").toString();
		
		response.setContentType("application/x-msdownload;charset=UTF-8");		
		response.setHeader("Content-disposition", "attachment;filename="+fileName);
		
		//����
		ServletContext application = request.getServletContext();
		String path = application.getRealPath("/upload");
		OutputStream os = response.getOutputStream(); 
		InputStream in = new FileInputStream(path+File.separator+fileName);
		byte[] b = new byte[4096];
		int len = in.read(b);
		while(len!=-1) {
			os.write(b, 0, len);
			len = in.read(b);
		}
		os.flush();
		os.close();
		in.close();
	}

}
