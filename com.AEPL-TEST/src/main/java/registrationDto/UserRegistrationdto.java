package registrationDto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserRegistrationdto {

	private String name;
	private String email;
//	@Column(unique = true,length = 10)
	@Id
	private Long mobileNumber;
	private String dob;
	private String location;
	private String file;
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "UserRegistrationdto [name=" + name + ", email=" + email + ", mobileNumber=" + mobileNumber + ", dob="
				+ dob + ", location=" + location + ",File=\" + file + \"]";
	}
	
	
}
