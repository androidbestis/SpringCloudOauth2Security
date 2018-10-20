package com.microservice.skeleton.upms.service.impl;

import com.microservice.skeleton.upms.entity.RcRole;
import com.microservice.skeleton.upms.mapper.RcRoleMapper;
import com.microservice.skeleton.upms.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RcRoleMapper roleMapper;

    @Override
    public List<RcRole> getRoleByUserId(Integer userId) {
        return roleMapper.getRoleByUserId(userId);
    }
}
