package com.microservice.skeleton.upms.service;

import com.microservice.skeleton.upms.entity.RcUser;

/**
 * 根据用户名查询用户
 */
public interface UserService {
    RcUser findByUsername(String username);
}
