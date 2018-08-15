package pk.services;

import org.springframework.beans.factory.annotation.Autowired;

import pk.daos.UserDAOJDBCImpl;
import pk.entities.User;

public class UpdateServiceImpl implements UpdateService {
	@Autowired 
	private UserDAOJDBCImpl userDAO;
	
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

}
