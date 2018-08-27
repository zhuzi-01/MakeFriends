package controller;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import net.sf.json.JSONObject;
import pojo.Member;
import util.C3p0Utils;

public class test {

	
	@Test
	public void test() throws SQLException {
		JSONObject json=new JSONObject();
		UserDao userimpl=new UserDaoimpl();
		List<Member> users=new ArrayList<Member>();
		users=userimpl.getAll();
		json.put("user", users);
		System.out.println("返回给客户端的数据：" + json);
		
	}
	

}
