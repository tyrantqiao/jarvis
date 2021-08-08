package com.tyrantqiao.jarvis.message.config;

import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * rabbitmq的配置文件$
 * <p>
 * 创建时间： 2021/7/11 19:45
 * 博客地址： <a href="https://tyrantqiao.com">详情戳我(╯‵□′)╯︵┻━┻)</a>
 *
 * @author tyrantqiao
 * @version 1.0
 **/
@Configuration
public class RabbitMqConfiguration {

    @Bean
    public Queue helloWorldQueue() {
        return new Queue("helloworld", true, false, false);
    }

    @Bean
    public ConnectionFactory connectionFactory() {
        CachingConnectionFactory cachingConnectionFactory = new CachingConnectionFactory();
        cachingConnectionFactory.setAddresses("127.0.0.1");
        cachingConnectionFactory.setUsername("root");
        cachingConnectionFactory.setPassword("%5QWERzxc");
        cachingConnectionFactory.setPublisherReturns(true);
        return cachingConnectionFactory;
    }
}
