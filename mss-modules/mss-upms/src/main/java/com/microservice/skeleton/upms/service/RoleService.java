package com.microservice.skeleton.upms.service;

import com.microservice.skeleton.upms.entity.RcRole;

import java.util.List;

/**
 * 根据用户Id查询角色
 */
public interface RoleService {
    List<RcRole> getRoleByUserId(Integer userId);
}
