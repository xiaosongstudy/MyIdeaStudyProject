package com.hopeurl.JSP.test;

/**
 * @Author hopeurl(2453332538 @ qq.com)
 * @Date 2021/4/7  9:37
 * @Version 1.0
 */
import java.util.Scanner;
public class TestDemo01 {
    private int MaxSubsequenceSum(int array[], int left, int right)
    {
        if (left==right)
            return array[left];
        int middle = (left + right) / 2;
        int leftMaxSubsequenceSum = MaxSubsequenceSum(array, left, middle);
        int rightMaxSubsequenceSum = MaxSubsequenceSum(array, middle + 1, right);
        int maxLeftBorderSum = 0;
        int maxRightBorderSum = 0;
        int tempSum = 0;
        for (int i = middle;i >= left;i--)
        {
            tempSum += array[i];
            if (tempSum > maxLeftBorderSum)
                maxLeftBorderSum = tempSum;
        }
        tempSum=0;
        for (int i = middle+1;i <= right;i++)
        {
            tempSum += array[i];
            if (tempSum >  maxRightBorderSum)
                maxRightBorderSum = tempSum;
        }
        int maxBorderSum = maxLeftBorderSum+maxRightBorderSum;
        return max3(leftMaxSubsequenceSum,maxBorderSum,rightMaxSubsequenceSum);
    }
    private int max3(int a, int b, int c)
    {
        int max = a;
        if (b > max)
            max = b;
        if (c > max)
            max = c;
        return max;
    }
    public static void main(String[] args) {
        int[] a=new int[100];
        int i,n;
        Scanner input = new Scanner(System.in);
        n = input.nextInt();
        for(i=0;i<=n-1;i++)a[i]=input.nextInt();
        int maxSubSum = new TestDemo01().MaxSubsequenceSum(a, 0, n-1);
        System.out.println(maxSubSum);
    }
}
