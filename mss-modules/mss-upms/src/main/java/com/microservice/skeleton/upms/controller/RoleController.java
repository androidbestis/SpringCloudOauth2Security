package com.microservice.skeleton.upms.controller;

import com.microservice.skeleton.common.vo.Result;
import com.microservice.skeleton.upms.entity.RcRole;
import com.microservice.skeleton.upms.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 根据用户Id查询角色
 */
@RestController
@RequestMapping("role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @GetMapping("getRoleByUserId/{userId}")
    public Result getRoleByUserId(@PathVariable("userId") Integer userId){
        List<RcRole> roleList = roleService.getRoleByUserId(userId);
        return Result.ok().setData(roleList);
    }

}
