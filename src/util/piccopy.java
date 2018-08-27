package util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class piccopy {

public static void copefile(File oldfile,File newfile) {
	File[] old=oldfile.listFiles();
}
public static void cope(File oldfile,File newfile) throws IOException {
	InputStream iStream=new FileInputStream(oldfile);
	BufferedInputStream bis=new  BufferedInputStream(iStream);
	OutputStream os=new FileOutputStream(newfile);
	BufferedOutputStream bos=new BufferedOutputStream(os);
	int len=0;
	byte[] bs=new byte[1024];
	while((len=bis.read(bs))!=-1){
	 bos.write(bs);
	}
	bis.close();
	bos.close();
}

public static void Picturecopy() throws IOException{
	
//	File oldfile=new File("src\\com\\");
//	File newfile=new File("C:\\Users\\жљзг01\\Desktop\\");
	InputStream iStream=new FileInputStream("C:\\Program Files\\Apache Software Foundation\\apache-tomcat-9.0.4\\webapps\\MakeFriends\\static\\upload");
	BufferedInputStream bis=new  BufferedInputStream(iStream);
	OutputStream os=new FileOutputStream("C:\\Program Files\\Apache Software Foundation\\apache-tomcat-9.0.4\\webapps\\upload");
	BufferedOutputStream bos=new BufferedOutputStream(os);
	int len=0;
	byte[] bs=new byte[1024];
	while((len=bis.read(bs))!=-1){
	 bos.write(bs);
	}
	bis.close();
	bos.close();
}

}
