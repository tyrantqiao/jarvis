package com.tyrantqiao.jarvis.message.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


/**
 * 模拟MQ的生产者controller$
 * <p>
 * 创建时间： 2021/7/11 20:07
 * 博客地址： <a href="https://tyrantqiao.com">详情戳我(╯‵□′)╯︵┻━┻)</a>
 *
 * @author tyrantqiao
 * @version 1.0
 **/
@RestController
@RequestMapping("/message")
public class ProducerController {
    private final Logger logger = LoggerFactory.getLogger(ProducerController.class);

    private final AmqpTemplate amqpTemplate;

    @Autowired
    public ProducerController(AmqpTemplate amqpTemplate) {
        this.amqpTemplate = amqpTemplate;
    }

    @RequestMapping("/hello")
    public String send(@RequestParam("queue") String queue, @RequestParam("username") String username) throws Exception {

        String helloMsg = "hello " + username + " 's world";
        this.amqpTemplate.convertAndSend(queue, helloMsg);
        logger.info("send message:" + helloMsg);
        return helloMsg;
    }

    @RequestMapping("/receive")
    public String receive(@RequestParam("queue") String queue) {
        String receiveAndConvertMsg = (String) this.amqpTemplate.receiveAndConvert(queue);
        logger.info("receive message:" + receiveAndConvertMsg);
        return receiveAndConvertMsg;
    }

}
