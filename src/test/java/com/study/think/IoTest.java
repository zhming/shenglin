package com.study.think;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-8-11
 * Time: 下午3:54
 * To change this template use File | Settings | File Templates.
 */
public class IoTest {

    public static void main(String[] args){
        File f = new File("d:\\test.txt");
        try{
            OutputStream out=new FileOutputStream(f);//如果文件不存在会自动创建
               String str="Hello World";
              byte[] b=str.getBytes();
              out.write(b);//因为是字节流，所以要转化成字节数组进行输出
                out.close();
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
