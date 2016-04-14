package com.supinfo.suprail.util;

import java.util.Formatter;
import java.util.Random;

public class BaseUtil {
	private static String random_str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	public static String generateRandomString(int size){
		String random = new String();
		Random rand = new Random();
		
		for(int i=0; i<size; i++){
			int random_nbr = rand.nextInt(random_str.length());
			random += (rand.nextBoolean())?random_str.charAt(random_nbr):Character.toLowerCase(random.charAt(random_nbr));
		}
		
		return random;
	}
	
	public static String byteToHex(byte[] hash)
	{
	    Formatter formatter = new Formatter();
	    for (byte b : hash){
	        formatter.format("%02x", b);
	    }
	    String result = formatter.toString();
	    formatter.close();
	    return result;
	}
}
