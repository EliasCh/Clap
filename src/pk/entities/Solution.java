package pk.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotEmpty;

@Entity 
@Table(name="solutions")
public class Solution {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id ;
	@NotEmpty
	private String url ;
	private int vote ;
	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date sdate ;
	public Solution() {}
	public Solution(int id, String url, int vote, Date sdate) {
		super();
		this.id = id;
		this.url = url;
		this.vote = vote;
		this.sdate = sdate;
	}
	public Solution( String url, Date sdate) {
		super();
		this.url = url;
		this.sdate = sdate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getVote() {
		return vote;
	}
	public void setVote(int vote) {
		this.vote = vote;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	@Override
	public String toString() {
		return "Solution [id=" + id + ", url=" + url + ", vote=" + vote + ", sdate=" + sdate + "]";
	}
	
	
	
}
