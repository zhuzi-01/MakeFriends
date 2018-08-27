package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import pojo.Member;

/**
 * Servlet implementation class Regcontroller
 */
@WebServlet("/Regcontroller")
public class Regcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Regcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member member=new Member();
		UserDao userdaoimpl=new UserDaoimpl();
		member.setLogname(request.getParameter("logname"));
		member.setPassword(request.getParameter("password"));
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		member.setPic("http://localhost:8080/MakeFriends/static/upload/IMG_20150630_204400_1437150461619.jpg ");
		if (userdaoimpl.adduser(member)>0) {
			HttpSession session=request.getSession();
			if (session.getAttribute("user")!=null) {
				session.removeAttribute("user");
				//request.getRequestDispatcher("view/index.jsp").forward(request, response);
			} 		
			session.setAttribute("member", member);
			request.getRequestDispatcher("view/reg_result.jsp").forward(request, response);
		} else {
			HttpSession session=request.getSession();
			//session.setAttribute("user", 0);
			session.setAttribute("res", "×¢²áÊ§°Ü£¡£¡£¡");
			response.sendRedirect("view/result.jsp");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
