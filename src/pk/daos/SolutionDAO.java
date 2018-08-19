package pk.daos;

import java.sql.Timestamp;
import java.util.List;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;

public interface SolutionDAO {
	public void create(Solution solution);
	public void delete(int id);
	public void update(Solution solution);
	public Solution read(int id);
	public Solution read(String url,Timestamp ts);
	public List<Solution> readAll();
	public User getUser(Solution solution);
	public Topic getTopic(Solution solution);
	public void wireSolutionToTopic(Solution solution,Topic topic);
	public void wireSolutionToUser(Solution solution,User user);
	
}
