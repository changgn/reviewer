package vo;

import java.util.Date;

public class MembersVo {
	
	private String id;
	private String passwd;
	private String name;
	private String birth;
	private String gender;
	private String email;
	private String phone_num;
	private Date reg_date;
	private int recommend_num;
	
	public MembersVo() {
		
	}
	
	
	public MembersVo(String id, String passwd, String name, String birth, String gender, String email, String phone_num, Date reg_date, int recommend_num) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.email = email;
		this.phone_num = phone_num;
		this.reg_date = reg_date;
		this.recommend_num = recommend_num;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getRecommend_num() {
		return recommend_num;
	}
	public void setRecommend_num(int recommend_num) {
		this.recommend_num = recommend_num;
	}
	
	

}
