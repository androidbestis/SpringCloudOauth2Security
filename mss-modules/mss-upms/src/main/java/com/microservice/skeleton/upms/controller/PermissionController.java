package com.microservice.skeleton.upms.controller;

import com.microservice.skeleton.common.vo.Result;
import com.microservice.skeleton.upms.entity.RcMenu;
import com.microservice.skeleton.upms.service.PermissionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 根据角色Id查询权限
 */
@Slf4j
@RestController
@RequestMapping("permission")
public class PermissionController {

    @Autowired
    private PermissionService permissionService;

    @GetMapping("getRolePermission/{roleId}")
    public Result getRolePermission(@PathVariable("roleId") Integer roleId){
        List<RcMenu> menuList = permissionService.getPermissionsByRoleId(roleId);
        return Result.ok().setData(menuList);
    }

}
