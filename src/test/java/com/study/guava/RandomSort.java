package com.study.guava;

import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-7-30
 * Time: 下午4:27
 * To change this template use File | Settings | File Templates.
 */
public class RandomSort {

    public static void printRandomSort(){
        Random random = new Random();
        List<Integer> list = new ArrayList<Integer>();
        for(int i = 0; i < 10; i++){
            list.add(random.nextInt(1000));
        }

        Collections.sort(list);

        Iterator it = list.iterator();

        int count = 0;
        while (it.hasNext()){
            System.out.println(++count + ": " + it.next());
        }
    }

    public static void main(String[] args){
        printRandomSort();
    }
}
