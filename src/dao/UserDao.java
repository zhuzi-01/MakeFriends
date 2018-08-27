package dao;

import java.util.List;

import pojo.Member;

public interface UserDao {
	int adduser(Member member);
	Member queryuser(String name,String pwd);
	int updatepwd(String logname,String newpwd);
	int updatepic(String logname,String picname);
	int updateAll(String logname,Member member);
	List<Member> getAll();

}
