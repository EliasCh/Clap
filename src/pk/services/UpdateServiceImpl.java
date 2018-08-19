package pk.services;

import org.springframework.beans.factory.annotation.Autowired;

import pk.daos.SolutionDAO;
import pk.daos.UserDAOJDBCImpl;
import pk.entities.Solution;
import pk.entities.User;

public class UpdateServiceImpl implements UpdateService {
	@Autowired 
	private UserDAOJDBCImpl userDAO;
	@Autowired 
	private SolutionDAO solutionDAO; 
	
	@Override
	public void updateUser(User user) throws Exception {
		// TODO Auto-generated method stub
		userDAO.update(user);
	}

	@Override
	public User getUserByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.read(email) ;
	}

	@Override
	public void updateSolution(Solution solution) throws Exception {
		// TODO Auto-generated method stub
		solutionDAO.update(solution);
	}

}
