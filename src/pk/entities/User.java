package pk.entities;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity 
@Table(name="users")
public class User {
	
	@Id
	@Email
	@Size(max=250)
	@NotEmpty(message="*")
	private String email ;
	
	@NotEmpty(message="*")
	@Size(min=5,max=20)
	private String username ;
	
	@Temporal(TemporalType.DATE)  
	@Past
	@DateTimeFormat(pattern="YYYY-MM-DD")
	@NotNull(message="*")
	private Date dob ;
	
	@NotEmpty(message="*")
	private String pass_hash ;
	
	public User() {}
	public User(String email, String username, Date dob, String pass_hash) {
		super();
		this.email = email;
		this.username = username;
		this.dob = dob;
		this.pass_hash = pass_hash;
	}

	public User(User user) {
		super();
		this.email = user.getEmail();
		this.username = user.getUsername();
		this.dob = user.getDob();
		this.pass_hash = user.getPass_hash();
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
		System.out.println(this.dob);
	}
	public String getPass_hash() {
		return pass_hash;
	}
	public void setPass_hash(String pass_hash) {
		this.pass_hash = pass_hash;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", username=" + username + ", dob=" + dob + ", pass_hash=" + pass_hash + "]";
	}
	public User clone() {
		User ruser= new User();
		ruser.setEmail(email);
		ruser.setUsername(username);
		ruser.setDob(dob);
		ruser.setPass_hash(pass_hash);
		return ruser ; 
	}
}
