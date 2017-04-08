package com.seckill.service;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * Created by Kohler on 2017/4/8.
 */
@Aspect
@Component
public class LogService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Before("execution(* com.seckill.service.*.*(..))")
    public void beforeLog() {
        logger.info("==> start call ");
    }

    @After(value = "execution(* com.seckill.service.*.*(..))")
    public void afterLog() {
        logger.info("==> after call ");
    }

    @AfterReturning("execution(* com.seckill.service.*.*(..))")
    public void afterReturning() {
        logger.info("==> after returning ");
    }

}
