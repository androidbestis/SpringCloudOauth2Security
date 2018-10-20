package com.microservice.skeleton.auth.service.impl;

import com.microservice.skeleton.auth.service.RoleService;
import com.microservice.skeleton.common.vo.Result;
import com.microservice.skeleton.common.vo.RoleVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 熔断器
 */
@Service
@Slf4j
public class RoleServiceImpl implements RoleService {
    @Override
    public Result<List<RoleVo>> getRoleByUserId(Integer userId) {
        log.info("调用{}失败","getRoleByUserId");
        return Result.failure(100,"调用getRoleByUserId失败");
    }
}
