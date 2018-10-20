package com.microservice.skeleton.auth.service;


import com.microservice.skeleton.auth.service.impl.PermissionServiceImpl;
import com.microservice.skeleton.common.vo.MenuVo;
import com.microservice.skeleton.common.vo.Result;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Feign调用mss-upms中的服务
 * name---服务名
 * fallback --熔断器
 */
@FeignClient(name = "mss-upms",fallback = PermissionServiceImpl.class)
public interface PermissionService {

    @GetMapping("permission/getRolePermission/{roleId}")
    Result<List<MenuVo>> getRolePermission(@PathVariable("roleId") Integer roleId);
}
