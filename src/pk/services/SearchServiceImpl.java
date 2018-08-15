package pk.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import pk.daos.SolutionDAO;
import pk.daos.TopicDAOJDBCImpl;
import pk.daos.UserDAOJDBCImpl;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;

public class SearchServiceImpl implements SearchService {
	@Autowired
	private SolutionDAO solutionDAO ;
	@Autowired
	private TopicDAOJDBCImpl topicDAO ;
	@Autowired 
	private UserDAOJDBCImpl userDAO;
	@Override
	public List<Solution> searchByTopic(Topic topic) throws Exception {
		// TODO Auto-generated method stub
		if (topic == null ) return new ArrayList<Solution>();
		return topicDAO.getSolutions(topic);
	}
	@Override
	public List<Topic> searchTopicsByUser(User user) throws Exception {
		// TODO Auto-generated method stub
		List<Topic> topics = new ArrayList<Topic>();
		List<Solution> solutions = userDAO.getSolutions(user);
		for(Solution solution : solutions ){
			topics.add(solutionDAO.getTopic(solution));
		}
		return topics;
	}
	@Override
	public List<Solution> searchByUserByTopic(User user, Topic topic) throws Exception {
		// TODO Auto-generated method stub
		List<Solution> solutions = new ArrayList<Solution>();
		List<Solution> allSolutions = userDAO.getSolutions(user);
		for(Solution solution : allSolutions ) 
			if((solutionDAO.getTopic(solution)).equals(topic)) 
				solutions.add(solution);
		return solutions;
	} 
}
