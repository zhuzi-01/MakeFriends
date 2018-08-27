package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class EncodingFilter implements Filter {
     private String charset;
    //ʵ����
    public EncodingFilter() {
        
    }

	//����
	public void destroy() {
		// TODO Auto-generated method stub
	}

	//��������
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//request.getParameter(name);
		HttpServletResponse res=(HttpServletResponse)response;
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding(charset);
		response.setCharacterEncoding(charset);
		res.setDateHeader("Expires", -1);
		res.setHeader("Cache-Control","no-cache");
		res.setHeader("Pragma","no-cache");
		System.out.println("************����֮ǰ");
		//��������ִ��
	    chain.doFilter(request, response);
	    System.out.println("************����֮��");
	}

	//��ʼ��
	public void init(FilterConfig fConfig) throws ServletException {
		charset=fConfig.getInitParameter("charset");
	}

}
