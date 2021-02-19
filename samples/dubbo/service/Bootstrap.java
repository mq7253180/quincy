package com.hce.banking.dubbo;

import java.io.IOException;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Bootstrap {
	public static void main(String[] args) throws IOException {
		ClassPathXmlApplicationContext context = null;
		try {
			long start = System.currentTimeMillis();
			context = new ClassPathXmlApplicationContext("applicationContext.xml");
			context.start();
			System.out.println("服务已经启动("+(System.currentTimeMillis()-start)+"ms)...");
			System.in.read();
		} finally {
			if(context!=null)
				context.close();
		}
	}
}
