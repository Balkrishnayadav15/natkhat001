package com.orange.util;

import java.math.RoundingMode;
import java.text.DecimalFormat;

public class ReportUtility {

	public static String getPercentage(long total, long remaining){
		DecimalFormat df2 = new DecimalFormat("#.##");
		df2.setRoundingMode(RoundingMode.UP);
		double percentage = 0;
		if(remaining != 0){
			percentage = ((double)remaining/(double)total) * 100;
			return df2.format(percentage);
		}else{
			return "0.0";
		}
		
	}
	
}
