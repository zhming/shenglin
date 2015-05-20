package com.study.guava;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-6-20
 * Time: 下午1:18
 * To change this template use File | Settings | File Templates.
 */
public class HelloSlf4j {
    private static final Logger logger = LoggerFactory.getLogger(HelloSlf4j.class);
    public HelloSlf4j(){

    }
    public static void main(String[] args) {

    }

    String test(){
        System.out.println(logger);
        logger.debug("This is debug message");
        logger.info("This is info message");
        logger.warn("This is warn message");
        logger.error("This is error message");
        return "";
    }
}