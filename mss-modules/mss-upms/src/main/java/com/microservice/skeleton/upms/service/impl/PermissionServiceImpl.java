package com.microservice.skeleton.upms.service.impl;

import com.microservice.skeleton.upms.entity.RcMenu;
import com.microservice.skeleton.upms.mapper.RcMenuMapper;
import com.microservice.skeleton.upms.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private RcMenuMapper menuMapper;

    @Override
    public List<RcMenu> getPermissionsByRoleId(Integer roleId) {
        return menuMapper.getPermissionsByRoleId(roleId);
    }
}
