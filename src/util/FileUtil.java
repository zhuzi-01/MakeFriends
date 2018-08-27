package util;

import java.util.Collection;

public class FileUtil {
	public static String getFileName(String header) {
		
		String[] s1=header.split(";");
		System.out.println(header);
		String[] s2=s1[2].split("=");
		String filename=s2[1].substring(s2[1].lastIndexOf("\\")+1).replaceAll("\"", "");
		return filename;
	}

}
