package com.shenglin.util;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

import java.io.IOException;
import java.util.Properties;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-8-21
 * Time: 上午10:13
 * To change this template use File | Settings | File Templates.
 */
public class StaticValue {
    public static String DIR_PIC = "";

    static {
        Resource resource = new ClassPathResource("/config.properties");
        try {
            Properties props = PropertiesLoaderUtils.loadProperties(resource);
            DIR_PIC = props.getProperty("dir_pic");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
