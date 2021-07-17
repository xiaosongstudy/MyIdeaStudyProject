package com.hopeurl.JSP.test;

import java.util.Scanner;

/**
 * @Author hopeurl(2453332538 @ qq.com)
 * @Date 2021/4/7  10:26
 * @Version 1.0
 */
public class TestDemo02 {
    private static int[] data = new int[200];
    private static int number = 0;

    public static void main(String[] args) {
        for (int i = 0; i < 200; i++) data[i] = 4 * i + 6;
        Scanner input = new Scanner(System.in);
        number = input.nextInt();
        System.out.println(findNumber(data.length-1,0));
    }
    private static int findNumber(int right, int left) {
        if (right>=left){
            int middle = (right+left) / 2;
            if (number==data[middle])return middle;
            if (number > data[middle]) {
                return findNumber(right, middle+1);
            } else {
                return findNumber(middle-1,left);
            }
        }else {
            return -1;
        }

    }
}



