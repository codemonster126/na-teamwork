package 数值分析;

import java.util.Scanner;

public class Qin {
	public static void main(String[] args) {
		Scanner put = new Scanner(System.in);
//		请输入x的最高次幂
		System.out.println("Please enter the highest power of x:");
		int max = put.nextInt();
//		请输入x的数值
		System.out.println("Please enter the x");
		double x = put.nextDouble();
//		请从高至低依次输入x的系数
		double[] a = new double[max+1];
		System.out.println("Please enter the coefficient of x:");
		for(int i = 0; i <= max; i++) {
			a[i] = put.nextDouble();
		}
//		输出结果
		System.out.println("The result is:"+qin(max,x,a));
	}
	
	static double qin(int max , double x , double[] a) {
//		b0=a[0]
		double pause = a[0];
//		递归求bi的值
		for(int i = 1 ; i <= max ; i++) {
			pause = pause*x + a[i];
		}
		return pause;
	}
}
