package pk.services;

import pk.entities.User;

public interface UpdateService {
	public void updateUser(User user) throws Exception;
	public User getUserByEmail(String email) throws Exception ;
}
