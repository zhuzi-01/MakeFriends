package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import net.sf.json.JSONObject;
import pojo.Member;

/**
 * Servlet implementation class GetAllToJson
 */
@WebServlet("/GetAllToJson")
public class GetAllToJson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllToJson() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONObject json=new JSONObject();
		UserDao userimpl=new UserDaoimpl();
		List<Member> users=new ArrayList<Member>();
		String page=request.getParameter("page");
		System.out.println("page="+page);
		users=userimpl.getAll();
		int pa=Integer.parseInt(page);
		pa=pa*5;
		List<Member> user=new ArrayList<>();
		for (int i = pa-5; i < pa; i++) {
			if (i+1>users.size()) {
				break;
			}
				user.add(users.get(i));	
		}
		json.put("users", user);
		System.out.println("返回给客户端的数据：" + json);
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
