package pk.services;

import pk.entities.Solution;
import pk.entities.User;

public interface UpdateService {
	public void updateUser(User user) throws Exception;
	public void updateSolution(Solution solution ) throws Exception ; 
	public User getUserByEmail(String email) throws Exception ;
}
