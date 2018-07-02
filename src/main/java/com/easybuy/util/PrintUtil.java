package com.easybuy.util;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;

/**
 * 杈撳嚭宸ュ叿绫�
 * @author tym
 *
 */
public class PrintUtil {

	private static void print(String msg,HttpServletResponse response){
        PrintWriter writer=null;
		try {
            if(null != response){
                writer=response.getWriter();
                writer.print(msg);
                writer.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
            writer.close();
        }
    }
	
	public static void write(Object obj,HttpServletResponse response){
		//response.setContentType("text/html; charset=utf-8");
		String json = JSONObject.toJSONString(obj,true);
		print(json,response);
	}
	
	public static void writeWithDate(Object obj,HttpServletResponse response){
		response.setContentType("text/html; charset=utf-8");
		String json = JSONObject.toJSONStringWithDateFormat(obj, "yyyy-MM-dd", SerializerFeature.PrettyFormat);
		print(json,response);
	}
}
