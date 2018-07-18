package com.service.impl;

import com.entity.Hello;
import com.mapper.HelloMapper;
import com.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WIN7 on 2018/6/12.
 */
@Service
public class HelloServiceImpl implements HelloService {

    @Autowired
    private HelloMapper helloMapper;

    @Override
    public List<Hello> queryHelloList() {
        return helloMapper.List();
    }
}
