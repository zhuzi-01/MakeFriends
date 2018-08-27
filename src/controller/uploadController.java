package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileUtils;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import pojo.Member;
import util.FileUtil;
import util.piccopy;

@WebServlet("/upload")
@MultipartConfig(maxFileSize=100000000,fileSizeThreshold=1000)
public class uploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public uploadController() {
        super();
       }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String dir="C:\\Program Files\\Apache Software Foundation\\apache-tomcat-9.0.4\\webapps\\upload";
		//String dir1=request.getServletContext().getRealPath("/static/upload");
		Collection<Part> parts=request.getParts();
		if (parts.size()==1) {
			Part part=request.getPart("file");
			String header=part.getHeader("Content-Disposition");
			String fileName=FileUtil.getFileName(header);
			part.write(dir+File.separator+fileName);
			//part.write(dir1+File.separator+fileName);
			System.out.println("单个文件上传"+dir+File.separator+fileName);
			Member member=(Member)request.getSession().getAttribute("user");
			String name=member.getLogname();
			UserDao user=new UserDaoimpl();
			System.out.println("111"+fileName);
			user.updatepic(name, "http://localhost:8080/MakeFriends/static/upload/"+fileName.trim());
			//piccopy.Picturecopy();
		}
		
		response.sendRedirect("view/index.jsp?err=yes");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
