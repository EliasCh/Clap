package pk.services;

import java.util.List;
import pk.entities.*;

public interface SearchService {
	//Unless specified , search = search solutions 
	public List<Solution> searchByTopic(Topic topic) throws Exception ;
	public List<Topic> searchTopicsByUser(User user) throws Exception ;
	public List<Solution> searchByUserByTopic(User user,Topic topic) throws Exception ;
}
