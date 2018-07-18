package com.job;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Created by WIN7 on 2018/6/13.
 */
@Component
public class jobTest {

    @Scheduled(cron = "0/5 * * * * ? ")
    private  void  test(){
        System.out.println("定时任务走起------------------");

    }
}
