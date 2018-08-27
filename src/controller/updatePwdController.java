package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import pojo.Member;

/**
 * Servlet implementation class Logincontroller
 */
@WebServlet("/updatePwdController")
public class updatePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatePwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member=(Member)request.getSession().getAttribute("user");
		String oldpwd=request.getParameter("oldpwd");
		String newpwd=request.getParameter("newpwd");
		String name=member.getLogname();
		UserDao userdaoimpl=new UserDaoimpl();
		HttpSession session=request.getSession();
		if (userdaoimpl.queryuser(name, oldpwd)!=null) {
			userdaoimpl.updatepwd(name, newpwd);
			session.setAttribute("res", "ÐÞ¸ÄÃÜÂë³É¹¦£¡£¡£¡");
			request.getRequestDispatcher("view/result.jsp").forward(request, response);
		} else {
			session.setAttribute("res", "¾ÉÃÜÂë²»¶Ô£¡£¡£¡");
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
