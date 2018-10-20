package com.microservice.skeleton.upms.service;

import com.microservice.skeleton.upms.entity.RcMenu;

import java.util.List;

/**
 * 根据角色Id查询权限
 */
public interface PermissionService {
    List<RcMenu> getPermissionsByRoleId(Integer roleId);
}
