package com.microservice.skeleton.resource.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 */
@RestController
public class UserController {

    @GetMapping(value = "getUser")
    public String getUser(){
        return "order";
    }

}
