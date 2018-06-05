package com.youtx.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Freemaker {

    @RequestMapping("/test")
    public String test(){
        return "publish_house_5";
    }
}
