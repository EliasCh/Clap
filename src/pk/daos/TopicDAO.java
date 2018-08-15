package pk.daos;

import java.util.List;
import pk.entities.Solution;
import pk.entities.Topic;

public interface TopicDAO {
	public void create(Topic topic);
	public void delete(int id);
	public Topic read(int id);
	public List<Topic> readAll();
	public List<Solution> getSolutions(Topic topic);	
	public Topic read(String title,double version);
}
