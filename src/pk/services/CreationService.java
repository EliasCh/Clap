package pk.services;

import pk.entities.*;

public interface CreationService {
	public void createSolution(Solution solution,Topic topic,User user) throws Exception ;
	public void wireSolutionToTopic(Solution solution, Topic topic) throws Exception ;
	public void wireSolutionToUser(Solution solution,Topic topic ,User user) throws Exception ;
}
