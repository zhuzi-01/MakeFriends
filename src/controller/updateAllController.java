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
@WebServlet("/updateAllController")
public class updateAllController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateAllController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member=(Member)request.getSession().getAttribute("user");
		String name=member.getLogname();
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		member.setMessage(request.getParameter("message"));
		
		UserDao userdaoimpl=new UserDaoimpl();
		HttpSession session=request.getSession();
		if (userdaoimpl.updateAll(name, member)>0) {
			
			session.setAttribute("res", "修改信息成功！！！");
			request.getRequestDispatcher("view/result.jsp").forward(request, response);
		} else {
			session.setAttribute("res", "修改信息失败！！！");
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
