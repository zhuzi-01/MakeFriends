package dao.impl;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import dao.UserDao;
import pojo.Member;
import util.C3p0Utils;

public class UserDaoimpl implements UserDao{
	static QueryRunner qr;
	static{
		qr=new QueryRunner(C3p0Utils.getDs());
	}
	@Override
	public int adduser(Member member) {
		int i = 0;
		String sql="insert into member(logname,password,phone,email,pic) values(?,?,?,?,?)";
		try {
			 i=qr.update(sql, new Object[]{member.getLogname(),member.getPassword(),member.getPhone(),member.getEmail(),member.getPic()});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public Member queryuser(String name, String pwd) {
		Member member = null;
		String sql="select * from member where logname=? and password=?";
		try {
			 member=qr.query(sql, new BeanHandler<Member>(Member.class),name,pwd );
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

	@Override
	public int updatepwd(String logname,String newpwd) {
		int i=0;
		String sql="update member set password=? where logname=?";
		try {
			i=qr.update(sql, new Object[]{newpwd,logname});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int updateAll(String logname,Member member) {
		int i=0;
		String sql="update member set phone=?,email=?,message=? where logname=?";
		try {
			i=qr.update(sql, new Object[]{member.getPhone(),member.getEmail(),member.getMessage(),logname});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int updatepic(String logname, String picname) {
		int i=0;
		String sql="update member set pic=? where logname=?";
		try {
			i=qr.update(sql, new Object[]{picname,logname});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public List<Member> getAll() {
		List<Member> users=null;
		String select_sql="select * from member";
	    try {
	    	users=qr.query(select_sql,new BeanListHandler<Member>(Member.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		 
		return users;
	}

}
