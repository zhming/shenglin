package com.study.guava;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-8-1
 * Time: 上午11:34
 * To change this template use File | Settings | File Templates.
 */
public class QuickSort {

    public static void main(String[] args){
        int[] ii = {1, 3, 24, 12, 44, 8, 93, 4};
        startSort(ii, 3, 5);
        for(int i = 0; i < ii.length; i++){
            System.out.println(ii[i]);
        }

    }

    public static void startSort(int[] array, int start, int end){
        if (start < end){
            int key = array[start];
            for(int i = 0; i < array.length; i++ ){
                if(array[i] > key){

                }
            }
        }
    }
}
