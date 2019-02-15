package cinema_common;

public class Userbean {
	private String id;
	private String name;
	private String pwd;
	private String juso1;
	private String juso2;
	private String birth; // to_date('2018-09-01','yyyy-mm-dd')
	private String phone; // 010-7766-7936
	private String email;
	private String file;
	
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getJuso1() {
		return juso1;
	}
	public void setJuso1(String juso1) {
		this.juso1 = juso1;
	}
	public String getJuso2() {
		return juso2;
	}
	public void setJuso2(String juso2) {
		this.juso2 = juso2;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
