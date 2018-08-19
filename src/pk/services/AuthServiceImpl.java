package pk.services;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import pk.daos.UserDAOJDBCImpl;
import pk.entities.User;

public class AuthServiceImpl implements AuthService {
	
	@Autowired 
	private UserDAOJDBCImpl userDAO;
	@Override
	public boolean isUser(String email) throws Exception {
		// TODO Auto-generated method stub
		User user = userDAO.read(email);
		return (user != null ) ; 
	}/**/
	
	@Override
	public void createUser(User user) throws Exception {
		// TODO Auto-generated method stub
		userDAO.create(user);
	}

	@Override
	public void deleteUser(String email) throws Exception {
		// TODO Auto-generated method stub
		userDAO.delete(email);
	}

	@Override 
	public String generatePasswordHash(String pass) {
		// TODO Auto-generated method stub
		return DigestUtils.sha256Hex(pass);
	}

	@Override
	public boolean authUser(String email, String pass) throws Exception {
		// TODO Auto-generated method stub
		User user = userDAO.read(email);
		if(user == null )
			return false; 
		String testHash = generatePasswordHash(pass);
		return  (user.getPass_hash().equals(testHash));
	}
}
