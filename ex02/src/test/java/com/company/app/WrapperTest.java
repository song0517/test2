package com.company.app;

import org.junit.Test;

//����(primitive type) : int, long, char       ,float, double :0, 0.0
//1.��üȭ               : Intger, Long, Character,Float :null
//2.Ÿ�Ժ�ȯ string <-> int, long...
//List<Object>
//
public class WrapperTest {
	@Test
	public void test() {
		int a = new Integer(10); //��
		Integer b = a;
		String c = b.toString();
		a = Integer.parseInt(c);
	}
}
