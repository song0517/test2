package com.company.app;

import org.junit.Test;

//¿ø½Ã(primitive type) : int, long, char       ,float, double :0, 0.0
//1.°´Ã¼È­               : Intger, Long, Character,Float :null
//2.Å¸ÀÔº¯È¯ string <-> int, long...
//List<Object>
//
public class WrapperTest {
	@Test
	public void test() {
		int a = new Integer(10); //ÆÑ
		Integer b = a;
		String c = b.toString();
		a = Integer.parseInt(c);
	}
}
