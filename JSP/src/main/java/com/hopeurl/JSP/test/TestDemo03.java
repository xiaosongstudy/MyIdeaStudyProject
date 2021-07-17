package com.hopeurl.JSP.test;

import java.math.BigDecimal;
import java.util.Scanner;

/**
 * @Author hopeurl(2453332538 @ qq.com)
 * @Date 2021/4/7  12:18
 * @Version 1.0
 */
public class TestDemo03 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        BigDecimal x1 = in.nextBigDecimal();
        BigDecimal x2 = in.nextBigDecimal();
        BigDecimal multiply = x1.multiply(x2);
        System.out.println(multiply);
    }
}

