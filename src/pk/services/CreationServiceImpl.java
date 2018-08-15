package pk.services;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;

import pk.daos.SolutionDAO;
import pk.daos.TopicDAOJDBCImpl;
import pk.daos.UserDAOJDBCImpl;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;

public class CreationServiceImpl implements CreationService {

	@Autowired
	private SolutionDAO solutionDAO ;
	@Autowired
	private TopicDAOJDBCImpl topicDAO ;
	@Autowired 
	private UserDAOJDBCImpl userDAO;
	
	@Override
	public void createSolution(Solution solution,Topic topic,User user) throws Exception {
		// TODO Auto-generated method stub
		topic.setTitle(topic.getTitle().trim().replaceAll(" +"," ").toLowerCase());
		System.out.println("Topic to create "+topic);
		if(topicDAO.read(topic.getTitle(), topic.getVersion())==null)
			topicDAO.create(topic);
		//check if so already submitted the same solution to the same topic
		solutionDAO.create(solution);
		wireSolutionToTopic(solution,topic);
		wireSolutionToUser(solution,user);
		//wireSolutioToTopic(solution)
	}

	@Override
	public void wireSolutionToTopic(Solution solution1, Topic topic1) throws Exception {
		// TODO Auto-generated method stub
		Solution solution = solutionDAO.read(solution1.getUrl(),new Timestamp(solution1.getSdate().getTime()));
		System.out.println("solution "+solution);
		Topic topic = topicDAO.read(topic1.getTitle(), topic1.getVersion());
		solutionDAO.wireSolutionToTopic(solution, topic);
	}

	@Override
	public void wireSolutionToUser(Solution solution1, User user1) throws Exception {
		// TODO Auto-generated method stub
		Solution solution = solutionDAO.read(solution1.getUrl(),new Timestamp(solution1.getSdate().getTime()));
		System.out.println("solution 2"+solution);
		User user = userDAO.read(user1.getEmail());
		System.out.println("User "+user);
		solutionDAO.wireSolutionToUser(solution, user);
		
	}
	
}
