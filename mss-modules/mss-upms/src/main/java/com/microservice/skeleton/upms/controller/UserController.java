package com.microservice.skeleton.upms.controller;

import com.microservice.skeleton.common.vo.Result;
import com.microservice.skeleton.upms.entity.RcUser;
import com.microservice.skeleton.upms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 根据用户名查询用户
 */
@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("findByUsername/{username}")
    public Result findByUsername(@PathVariable("username") String username){
        RcUser user = userService.findByUsername(username);
        if (user == null){
            return Result.failure(100,"用户不存在");
        }
        return Result.ok().setData(user);
    }
}
