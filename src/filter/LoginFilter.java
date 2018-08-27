package filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	private String sessionKey;
	private String redirectUrl;//直接访问页面
	private String unchekedUrls;//该页面过滤器不检测
	
	public void init(FilterConfig config) throws ServletException {
		ServletContext context=config.getServletContext();
		sessionKey=context.getInitParameter("userSessionKey");
		redirectUrl=context.getInitParameter("RedirctPage");
		unchekedUrls=context.getInitParameter("UnchekURL");
		
	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//类型转型
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
	   //1、获取请求的URL完整请求路径
	  String requestURL= req.getRequestURL().toString();
	  String requestURI=req.getRequestURI();
	  String servletPath=req.getServletPath();
	   
		System.out.println("完整路径："+requestURL);
		//项目的资源名字，http://localhost:8080/||WebCharter06/xxxx.jsp
		System.out.println("项目资源名字："+requestURI);
		//请求名字
		System.out.println("serlvet名字："+servletPath);
		//2、检查获取的servletpath是否不需要检查的URL中的一个，若是，则直接放行，方法结束
		List<String>urls=Arrays.asList(unchekedUrls.split(","));
		if(urls.contains(servletPath)){
		//允许继续往下走，放行
			System.out.println("放行");
		 chain.doFilter(request, response);
		 return;
		}
		//3、从session中获取sessionkey的对应的值，若值不存在，则重定向到redirectURl
		Object user=req.getSession().getAttribute(sessionKey);
		//没有登录
		if(user==null){
			//路径前面 req.getContextPath()---项目虚拟目录
			System.out.println("根目录："+req.getContextPath());
			//使用绝对路径，不会出错
	
			res.sendRedirect(req.getContextPath()+redirectUrl+"?error=yes");
		}
		//4、若存在，则放行，允许访问
		chain.doFilter(request, response);
		

	}

	public void destroy() {
		
		
	}

	

	

}
