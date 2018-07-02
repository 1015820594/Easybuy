package com.easybuy.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Component
public class MyMvcConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		HandlerInterceptor hi = new HandlerInterceptor() {

			@Override
			public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
					throws Exception {
				System.out.println("preHandle...");
				return true;
			}
			
		};
		registry.addInterceptor(hi).addPathPatterns("/*");
	}

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		//没有添加默认也是这个视图解析器
		//默认配置:org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration
		//registry.viewResolver(new InternalResourceViewResolver("/", ".jsp"));
	}

	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		//StringHttpMessageConverter sh = new StringHttpMessageConverter(Charset.forName("utf-8"));
		//没有添加默认也有该消息转换器
		//converters.add(sh);
	}
	
    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        //configurer.enable();
    }

	
}
