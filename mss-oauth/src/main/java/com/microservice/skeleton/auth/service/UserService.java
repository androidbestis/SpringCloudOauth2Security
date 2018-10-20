package com.microservice.skeleton.auth.service;

import com.microservice.skeleton.auth.service.impl.UserServiceImpl;
import com.microservice.skeleton.common.vo.Result;
import com.microservice.skeleton.common.vo.UserVo;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * Feign调用mss-upms中的服务
 * name---服务名
 * fallback--熔断器
 */
@FeignClient(name = "mss-upms",fallback = UserServiceImpl.class)
public interface UserService {

    @GetMapping("user/findByUsername/{username}")
    Result<UserVo> findByUsername(@PathVariable("username") String username);
}
