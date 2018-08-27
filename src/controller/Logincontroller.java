package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import pojo.Member;

/**
 * Servlet implementation class Logincontroller
 */
@WebServlet("/Logincontroller")
public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String pwd=request.getParameter("pass");
		UserDao userdaoimpl=new UserDaoimpl();
		Member member=userdaoimpl.queryuser(name, pwd);
		System.out.println(request.getContextPath());
		if (member!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("user", member);
			session.setMaxInactiveInterval(Integer.MAX_VALUE);
			System.out.println(session.getMaxInactiveInterval());
			//session.setAttribute(request.getServletContext().getInitParameter("userSessionKey"),member);
			request.getRequestDispatcher("view/log_result.jsp").forward(request, response);
		} else {
			HttpSession session=request.getSession();
			session.setAttribute("user", "0");
			session.setAttribute("res", "µÇÂ¼Ê§°Ü£¡£¡£¡");
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
