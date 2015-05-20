package com.study.guava;

import com.google.common.base.Preconditions;
import org.junit.Test;

import java.util.ArrayList;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-6-6
 * Time: 下午2:20
 * To change this template use File | Settings | File Templates.
 */
public class PreconditionsTests {
    @Test
    public void myTest() {
        int i = 11;
        /*
        if (i < 0) {
            throw new IllegalArgumentException("error");
        }
        */
//        Preconditions.checkArgument(i > 0);
//        Preconditions.checkArgument(i > 0, "argument must be > 0 ");
        Preconditions.checkArgument(i > 0, "argument %s must be > 0 ", i);
    }

    @Test
    public void checkElementIndexTest() {
        ArrayList list = new ArrayList(30);
        int index = 110;
//        if (index < 0) {
//            throw new IndexOutOfBoundsException("error");
//        }
//        if (index >= list.size()) {
//            throw new IndexOutOfBoundsException("error");
//        }
//        Preconditions.checkElementIndex(10, list.size());
        Preconditions.checkElementIndex(10, list.size(), "the text to use to describe this index in an error message ");
    }

    public void checkPositionIndexTest() {
        ArrayList list = new ArrayList(30);
        int index = 10;

        Preconditions.checkPositionIndex(index, list.size());
    }
}
