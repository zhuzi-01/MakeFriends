package filter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/** 
* @author : yyh
* @date ����ʱ�䣺2018��7��10�� ����4:12:15 
* @version 1.0 
*/
public class MyRequest extends HttpServletRequestWrapper {

	public MyRequest(HttpServletRequest request) {
		super(request);
		
	}

	//��װ��getParameter();
	@Override
	public String getParameter(String name) {
		String val=super.getParameter(name);
		System.out.println("�滻ǰ������"+val);
		
		String str=SensitiveWord.getfilteredStr(val);
		System.out.println("�滻�������"+str);
		return str;
	}
	
}
