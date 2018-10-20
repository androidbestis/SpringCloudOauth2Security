package com.microservice.skeleton.monitor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;
import org.springframework.cloud.netflix.turbine.EnableTurbine;
import zipkin.server.EnableZipkinServer;

@SpringBootApplication
@EnableDiscoveryClient       //开启注册中心
@EnableHystrixDashboard      //开启HystrixDashboard监控
@EnableTurbine               //开启Turbine
@EnableZipkinServer          //开启链路追踪服务Zipkin Server
public class MonitorApplication {

	public static void main(String[] args) {
		SpringApplication.run(MonitorApplication.class, args);
	}
}
