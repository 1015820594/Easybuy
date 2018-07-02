package com.easybuy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@MapperScan(basePackages="com.easybuy.dao")
@EnableTransactionManagement
@SpringBootApplication
public class DemoApplication {
	public static void main(String[] args) throws Exception {
		SpringApplication app = new SpringApplication(DemoApplication.class);
		app.run(args);
	}
}