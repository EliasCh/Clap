package pk.services;

import java.sql.Timestamp;
import java.util.List;

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
	@Autowired 
	SearchService searchService ;
	
	@Override
	public void createSolution(Solution solution,Topic topic,User user) throws Exception {
		// TODO Auto-generated method stub
		topic.setTitle(topic.getTitle().trim().replaceAll(" +"," ").toLowerCase());
		System.out.println("Topic to create "+topic);
		if(topicDAO.read(topic.getTitle(), topic.getVersion())==null)
			topicDAO.create(topic);
		Topic topicDb = topicDAO.read(topic.getTitle(), topic.getVersion());
		//check if so already submitted the same solution to the same topic
		List<Solution> solutions = searchService.searchByTopic(topicDb);
		System.out.println("Solutions of the topic "+solutions);
		for(Solution solutionFound : solutions) {
			System.out.println("solution url "+solutionFound.getUrl());
			if(solutionFound.getUrl().equals(solution.getUrl()) ) {
				System.out.println("jiojoij");
				throw new Exception("The same solution for the same topic has already been submitted ") ;
			}
		}
		System.out.println("createSolution : solution "+solution);
		solutionDAO.create(solution);
		
		Timestamp ts= (Timestamp) solution.getSdate(); 
		System.out.println("TIMESTAMP "+ts );
		Solution solutionDb = solutionDAO.read(solution.getUrl(), (Timestamp) solution.getSdate());
		System.out.println("Solution db "+solutionDb );
		wireSolutionToTopic(solutionDb,topicDb);
		wireSolutionToUser(solutionDb,topicDb,user);
		//wireSolutioToTopic(solution)
	}

	@Override
	public void wireSolutionToTopic(Solution solution, Topic topic) throws Exception {
		// TODO Auto-generated method stub
		solutionDAO.wireSolutionToTopic(solution, topic);
	}

	@Override
	public void wireSolutionToUser(Solution solution, Topic topic, User user) throws Exception {
		// TODO Auto-generated method stub
		User userDb = userDAO.read(user.getEmail());
		solutionDAO.wireSolutionToUser(solution, userDb);
	}
  
	
}
