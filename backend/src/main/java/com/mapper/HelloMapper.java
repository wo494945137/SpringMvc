package com.mapper;

import com.entity.Hello;

import javax.annotation.Resource;
import java.util.List;

@Resource
public interface HelloMapper {



   List <Hello> List();
	 
	void update(Hello image);

	void add(Hello image);

	void del(int id);

	Hello findById(int id);

}
