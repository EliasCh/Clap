package pk.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity 
@Table(name="topics")
public class Topic {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int topic ;
	@NotEmpty
	private String title="";
	@NotNull(message="incorrect value")
	@Min(value=0)
	private Double version;
	
	public Topic(){}

	public Topic(int topic, String title, Double version) {
		super();
		this.topic = topic;
		this.title = title;
		this.version = version;
	}
	public Topic(String title, Double version) {
		super();
		this.title = title;
		this.version = version;
	}

	@Override
	public String toString() {
		return "Topic [topic=" + topic + ", title=" + title + ", version=" + version + "]";
	}

	public int getTopic() {
		return topic;
	}

	public void setTopic(int topic) {
		this.topic = topic;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Double getVersion() {
		return version;
	}

	public void setVersion(Double d) {
		this.version = d;
	}

	@Override
	public boolean equals(Object obj) {
		return this.topic == ((Topic) obj).getTopic();
	}
	
}
