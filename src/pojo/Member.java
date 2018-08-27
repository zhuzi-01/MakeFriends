package pojo;
/**
logname ���洢��Ա��¼����
password ���洢��Ա��¼����
phone ���洢��Ա��Ա�ĵ绰
email ���洢��Ա��email��ַ
message  ���洢��Ա�ļ���
pic ���洢��Ա��Ƭ�ļ�������
 */
public class Member {
	private String logname;
	private String password;
	private String phone;
	private String email;
	private String message;
	private String pic;
	
	public Member() {}
	public Member(String logname, String password, String phone, String email, String message, String pic) {
		super();
		this.logname = logname;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.message = message;
		this.pic = pic;
	}
	/**
	 * @return the logname
	 */
	public String getLogname() {
		return logname;
	}
	/**
	 * @param logname the logname to set
	 */
	public void setLogname(String logname) {
		this.logname = logname;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}
	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	/**
	 * @return the pic
	 */
	public String getPic() {
		return pic;
	}
	/**
	 * @param pic the pic to set
	 */
	public void setPic(String pic) {
		this.pic = pic;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "member [logname=" + logname + ", password=" + password + ", phone=" + phone + ", email=" + email
				+ ", message=" + message + ", pic=" + pic + "]";
	}
	

}
