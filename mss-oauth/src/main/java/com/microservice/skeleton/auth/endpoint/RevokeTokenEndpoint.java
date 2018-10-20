package com.microservice.skeleton.auth.endpoint;

import com.microservice.skeleton.auth.model.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.endpoint.FrameworkEndpoint;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *  自定义注销Endpoint
    所谓注销只需将access_token和refresh_token失效即可
 */
@FrameworkEndpoint
public class RevokeTokenEndpoint {

    @Autowired
    private ConsumerTokenServices consumerTokenServices;

    @RequestMapping(value = "/oauth/token", method= RequestMethod.DELETE)
    public @ResponseBody  Msg revokeToken(String access_token){
        Msg msg = new Msg();
        if (consumerTokenServices.revokeToken(access_token)){
            msg.setCode(Msg.SUCCESS);
            msg.setMsg("注销成功");
        }else {
            msg.setCode(Msg.FAILED);
            msg.setMsg("注销失败");
        }
        return msg;
    }
}
