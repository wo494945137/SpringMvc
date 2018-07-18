package com.controller;

import com.entity.Hello;
import com.service.HelloService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by WIN7 on 2018/6/11.
 */
@Controller
public class HelloController {
    static Logger logger = LoggerFactory.getLogger(HelloController.class);

    @Autowired
    private HelloService helloService;

    @RequestMapping("/aaa")
    @ResponseBody
    private List<Hello> hello() {
        logger.debug("请求成功");
        return helloService.queryHelloList();
    }
}
